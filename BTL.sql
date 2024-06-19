---------- THONG TIN NGUOI LAM ----------
-- Ho va ten: Nguyen Duy Quang ----------
-- MSSV: K215480106139 ------------------

-------- Table Phong --------------

-- Xem so luong phong --
CREATE PROCEDURE XemSoLuongPhong
AS
BEGIN
SELECT * FROM Phong;
END;

-- Thêm phòng mới--
CREATE PROCEDURE ThemPhong
    @STT INT,
    @MaPhong NVARCHAR(50),
    @SoPhong INT,
    @LoaiPhong NVARCHAR(50),
	@GiaPhong INT,
	@TinhTrang NVARCHAR(50)
AS
BEGIN
    
     
    INSERT INTO Phong(STT, MaPhong,SoPhong , LoaiPhong, GiaPhong, TinhTrang)
    VALUES (@STT, @MaPhong, @SoPhong, @LoaiPhong, @GiaPhong, @TinhTrang);

END;

--- Xoa phong ---
CREATE PROCEDURE XoaPhong
@MaPhong INT
AS
BEGIN
   DELETE FROM Phong WHERE MaPhong = @MaPhong;
END;

--- Sua thong tin phong ----
CREATE PROCEDURE SuaThongPhong
   
    
    @MaPhong NVARCHAR(50),
    @SoPhong INT,
    @LoaiPhong NVARCHAR(50),
	@GiaPhong INT,
	@TinhTrang NVARCHAR(50)
AS
BEGIN
    UPDATE Phong
    SET SoPhong = @SoPhong,
		LoaiPhong = @LoaiPhong,
		GiaPhong = @GiaPhong,
		TinhTrang = @TinhTrang
		
    WHERE MaPhong = @MaPhong;
END;

--- Bao cao so luong phong trong ----------
CREATE PROCEDURE BaoCao
	
AS
BEGIN
    SELECT *
    FROM Phong
    WHERE TinhTrang = 'Trong';
END;


--------------Table Nguoi Thue ------------------

-- Them nguoi thue moi --

CREATE PROCEDURE ThemNguoiThue
    @STT INT,
    @MaNguoiDung NVARCHAR(50),
    @Hoten NVARCHAR(50),
	@GioiTinh NVARCHAR(50),
	@NgaySinh Date,
	@SDT NVARCHAR(50),
	@Diachi NVARCHAR(50)
AS
BEGIN
    
     
    INSERT INTO NguoiThue(STT, MaNguoiDung, HoTen, GioiTinh, NgaySinh, SDT, DiaChi)
    VALUES (@STT, @MaNguoiDung, @Hoten, @GioiTinh, @NgaySinh, @SDT, @Diachi);

END;

--- Xoa nguoi thue ---
CREATE PROCEDURE XoaNguoiThue
@MaNguoiDung INT
AS
BEGIN
   DELETE FROM NguoiThue WHERE MaNguoiDung = @MaNguoiDung;
END;



--- Sua thong tin nguoi thue ----
CREATE PROCEDURE SuaThongNguoiThue
   
    @MaNguoiDung NVARCHAR(50),
    @Hoten NVARCHAR(50),
	@GioiTinh NVARCHAR(50),
	@NgaySinh Date,
	@SDT NVARCHAR(50),
	@Diachi NVARCHAR(50)
AS
BEGIN
    UPDATE NguoiThue
    SET HoTen = @Hoten,
		GioiTinh = @GioiTinh,
		NgaySinh = @NgaySinh,
		SDT = @SDT,
		DiaChi = @Diachi
    WHERE MaNguoiDung = @MaNguoiDung;
END;

----- Table hop dong ---------

--- Them hop dong -----
CREATE PROCEDURE ThemHopDong
    @STT INT,
    @MaHopDong NVARCHAR(50),
    @MaNguoiDung NVARCHAR(50),
	@MaPhong NVARCHAR(50),
	@NgayBatDau Date,
	@NgayKetThuc Date,
	@TienCoc INT,
	@SoTienThue INT,
	@TrangThai NVARCHAR(50)
AS
BEGIN

    IF @MaPhong IS NULL OR @MaNguoiDung IS NULL
    BEGIN
        RAISERROR('Loi gia tri ID null', 16, 1);
        RETURN;
    END

    IF @NgayBatDau >= @NgayKetThuc
    BEGIN
        RAISERROR('Loi gia tri ngay', 16, 1);
        RETURN;
    END
     
    INSERT INTO HopDong(STT, MaHopDong, MaNguoiDung, MaPhong, NgayBatDau, NgayKetThuc, TienCoc, SoTienThue, TinhTrang )
    VALUES (@STT,@MaHopDong, @MaNguoiDung, @MaPhong, @NgayBatDau, @NgayKetThuc, @TienCoc, @SoTienThue, @TrangThai);

END;




--- Xoa hop dong ------

CREATE PROCEDURE XoaHopDong
@MaHopDong INT
AS
BEGIN
   DELETE FROM HopDong WHERE MaHopDong = @MaHopDong;
END;


----- Sua thong tin hop dong --------

CREATE PROCEDURE SuaThongTinHopDong
   

    @MaHopDong NVARCHAR(50),
    @MaNguoiDung NVARCHAR(50),
	@MaPhong NVARCHAR(50),
	@NgayBatDau Date,
	@NgayKetThuc Date,
	@TienCoc INT,
	@SoTienThue INT,
	@TrangThai NVARCHAR(50)
AS
BEGIN
    UPDATE HopDong
    SET 
		MaNguoiDung = @MaNguoiDung,
		MaPhong = @MaPhong,
		NgayBatDau = @NgayBatDau,
		NgayKetThuc = @NgayKetThuc,
		TienCoc = @TienCoc,
		SoTienThue = @SoTienThue
		TinhTrang = @TrangThai
    WHERE MaHopDong = @MaHopDong;
END;

------- Su dung Trigger ket hop Cursor de cap nhat hop dong  -------

CREATE TRIGGER CapNhatHopDong
ON HopDong
AFTER INSERT, UPDATE, DELETE
AS
BEGIN
    DECLARE @MaPhong NVARCHAR(50);

    -- Khai bao cursor khi them hoac cap nhat ----
    DECLARE Contro CURSOR FOR
    SELECT MaPhong
	FROM inserted;

    OPEN Contro;
    FETCH NEXT FROM Contro INTO @MaPhong;

    WHILE @@FETCH_STATUS = 0
    BEGIN
        ----- Cap nhat trang thai cua phong ------
        UPDATE Phong
        SET TinhTrang = CASE 
            WHEN EXISTS (SELECT 1 FROM HopDong WHERE MaPhong = @MaPhong AND TrangThai = 'Con Han')
                   THEN 'Cho thue'
                   ELSE 'Trong'
            END
        WHERE MaPhong = @MaPhong;

        FETCH NEXT FROM Contro INTO @MaPhong;
    END

    CLOSE Contro;
    DEALLOCATE Contro;

    -- Khai bao con tro khi xoa ---------
    DECLARE ControXoa CURSOR FOR
    SELECT MaPhong
	FROM deleted;

    OPEN ControXoa;
    FETCH NEXT FROM ControXoa INTO @MaPhong;

    WHILE @@FETCH_STATUS = 0
    BEGIN
        --------- Cap nhat trang thai cua phong ----------
        UPDATE Phong
        SET TinhTrang = CASE 
              WHEN EXISTS (SELECT 1 FROM HopDong WHERE MaPhong = @MaPhong AND TrangThai = 'Con Han')
                   THEN 'Cho thue'
                   ELSE 'Trong'
              END
        WHERE MaPhong = @MaPhong;

        FETCH NEXT FROM ControXoa INTO @MaPhong;
    END

    CLOSE ControXoa;
    DEALLOCATE ControXoa;
END;

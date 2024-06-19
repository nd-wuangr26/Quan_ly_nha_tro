# CHƯƠNG TRÌNH QUẢN LÝ NHÀ TRỌ CÔNG MINH TỔ 4 PHÚ XÁ
## Sinh viên thực hiện
### Họ và tên: Nguyễn Duy Quảng
### MSSV: K215480106139
### Lớp: K57KMT.01

------------------------------------------
### I. Mô tả bài toán

Vấn đề đặt ra là nhà trọ Công Minh tại tổ 4 Phú Xá, tỉnh Thái Nguyên cần phải quản lý 1 số vấn như quản lý thông tin người dùng, thông tin hợp đồng, số tiền thu được.

### II.Thực hiện phần mềm

**1. Thông tin thu nhập**

- Thông tin người thuê: Mã số người thuê, họ và tên, giới tính, ngày sinh, số điện thoại, địa chỉ.
- Thông tin phòng: Mã phòng, số phòng, loại phòng, giá phòng, tình trạng.
- Thông tin hợp đồng: Mã hợp đồng, mã phòng, mã người thuê, ngày bắt đầu, ngày kết thúc, tiền cọc, số tiền thuê, tình trạng.
- Thông tin thanh toán: Mã thanh toán, mã hợp đồng, ngày thanh toán, số tiền, cách thức.
- Thông tin dịch vụ: Mã dịch vụ, tên dịch vụ, giá.
- Thông tin sử dụng dịch vụ: Mã sử dụng, mã dịch vụ, mã hợp đồng, ngày sử dụng, số lượng.

**2. Các chức năng**

- Quản lý người thuê: Thêm thông tin người thuê, sửa thông tin người thuê, xóa thông tin người thuê.
- Quản lý phòng: Thêm thông tin phòng, sửa thông tin phòng, xóa thông tin phòng, cập nhật thông tin hợp đồng khi sửa hoặc xóa thông tin hợp đồng.
- Quản lý hợp đồng: Thêm thông tin hợp đồng, sửa thông tin hợp đồng, xóa thông tin hợp đồng, cập nhật thông tin phòng khi sửa hoặc xóa thông tin phòng.
- Quản lý thanh toán: Thêm thông tin thanh toán, sửa thông tin thanh toán, xóa thông tin thanh toán.
- Quản lý dịch vụ: Thêm thông tin dịch vụ, sửa thông tin dịch vụ, xóa thông tin dịch vụ.
- Quản lý sử dụng dịch vụ: Thêm thông tin sử dụng dịch vụ, sửa thông tin sử dụng dịch vụ, xóa thông tin sử dụng dịch vụ.
- Quản lý cập nhật số phòng còn trống.
- Sử dụng trigger và cursor để cập nhật thông tin phòng và hợp đồng.

**3. Các bảng thông tin**

1. Bảng người thuê:
   
![image](https://github.com/nd-wuangr26/Quan_ly_nha_tro/assets/166006721/87208916-b692-4c05-bea7-690bb423c20c)
 
Thiết lập MaNguoiDung làm PrimaryKey để xác định chỉ người dùng duy nhất. Các kiểu giá trị trong các thành phần của bảng:

- STT kiểu giá trị là INT để có thể tăng dần theo số lượng mình nhập.
- MaNguoiDung là kiểu giá trị NVARCHAR(50) để có nhập giá trị kiểu chuỗi ký tự và nó là PK nên không thể được để dạng NULL.
- HoTen là kiểu giá trị NVARCHAR(50) để có nhập giá trị kiểu chuỗi ký tự.
- GioiTinh là kiểu giá trị NVARCHAR(50) để có nhập giá trị kiểu chuỗi ký tự.
- NgaySinh là kiểu giá trị Date để có nhập giá trị ngày tháng.
- SDT là kiểu giá trị NVARCHAR(50) để có nhập giá trị kiểu chuỗi ký tự
- DiaChi là kiểu giá trị NVARCHAR(100) để có nhập giá trị kiểu chuỗi ký tự


2. Bảng phòng:

![image](https://github.com/nd-wuangr26/Quan_ly_nha_tro/assets/166006721/a36fbe30-bdfb-4024-8eed-2c6779400e79)

Thiết lập MaPhong làm PrimaryKey để xác định chỉ có phòng duy nhất. Các kiểu giá trị trong các thành phần của bảng:

-  STT kiểu giá trị là INT để có thể tăng dần theo số lượng mình nhập.
-  MaPhong là kiểu giá trị NVARCHAR(50) để có nhập giá trị kiểu chuỗi ký tự và nó là PK nên không thể được để dạng NULL.
-  SoPhong kiểu giá trị là INT để có thể nhập theo số nguyên dương mình nhập.
-  LoaiPhong là kiểu giá trị NVARCHAR(50) để có nhập giá trị kiểu chuỗi ký tự.
-  GiaPhong kiểu giá trị là INT để có thể nhập giá trị số nguyên dương.
-  TinhTrang là kiểu giá trị NVARCHAR(50) để có nhập giá trị kiểu chuỗi ký tự.
  
  
3. Bảng hợp đồng:

![image](https://github.com/nd-wuangr26/Quan_ly_nha_tro/assets/166006721/22c7023f-7b28-4c74-8d24-ce1894c8b9a6)

Thiết lập MaHopDong làm PrimaryKey để xác định gia trị duy nhất của mỗi hợp đồng. Thiết lập MaPhong, MaNguoiDung làm ForeignKey. Dựa vào FK có thể tham chiếu giá trị từ 2 bảng đến bảng hợp đồng. Các kiểu giá trị trong các thành phần của bảng: 

- STT kiểu giá trị là INT để có thể tăng dần theo số lượng mình nhập.
- MaHopDong là kiểu giá trị NVARCHAR(50) để có nhập giá trị kiểu chuỗi ký tự và nó là PK nên không thể được để dạng NULL.
- MaPhong là kiểu giá trị NVARCHAR(50) để có nhập giá trị kiểu chuỗi ký tự và có yêu cầu đúng giá trị khi tham chiếu từ bảng Phong.
- MaNguoiDung là kiểu giá trị NVARCHAR(50) để có nhập giá trị kiểu chuỗi ký tự và có yêu cầu đúng giá trị khi tham chiếu từ bảng NguoiThue.
- NgayBatDau là kiểu giá trị Date để có nhập giá trị ngày tháng.
- NgayKetThuc là kiểu giá trị Date để có nhập giá trị ngày tháng.
- TienCoc là kiểu giá trị INT để nhập giá trị nguyên dương.
- SoTienThue là kiểu giá trị INT để nhập giá trị nguyên dương.
- TinhTrang là kiểu giá trị NVARCHAR(50) để có thể nhập giá trị chuỗi ký tự.


4. Bảng thanh toán:

![image](https://github.com/nd-wuangr26/Quan_ly_nha_tro/assets/166006721/7bf0f748-4abe-4c50-a2f9-1386b4ce3478)

Thiết lập MaThanhToan làm PrimaryKey để giá trị duy nhất của mỗi thanh toán. Thiết lập MaHopDong làm ForignKey để tham chiếu bảng từ bảng hợp đồng. Các kiểu giá trị trong các thành phần của bảng: 

- STT kiểu giá trị là INT để có thể tăng dần theo số lượng mình nhập.
- MaThanhToan là kiểu giá trị NVARCHAR(50) để có nhập giá trị kiểu chuỗi ký tự và nó là PK nên không thể được để dạng NULL.
- MaHopDong là kiểu giá trị NVARCHAR(50) để có nhập giá trị kiểu chuỗi ký tự và có yêu cầu đúng giá trị khi tham chiếu từ bảng HopDong.
- NgayThanhToan là kiểu giá trị Date để có nhập giá trị ngày tháng.
- SoTien là kiểu giá trị INT để nhập giá trị nguyên dương.
- CachThuc là kiểu giá trị NVARCHAR(50) để có thể nhập giá trị chuỗi ký tự.


5. Bảng dịch vụ:

![image](https://github.com/nd-wuangr26/Quan_ly_nha_tro/assets/166006721/4e7ef765-2cec-4f8d-af11-84dc08ad4b16)

Thiết lập MaDichVu làm PrimaryKey để giá trị duy nhất của mỗi dịch vụ. Các kiểu giá trị trong các thành phần của bảng: 

- STT kiểu giá trị là INT để có thể tăng dần theo số lượng mình nhập.
- MaDichVu là kiểu giá trị NVARCHAR(50) để có nhập giá trị kiểu chuỗi ký tự và nó là PK nên không thể được để dạng NULL.
- TenDichVu là kiểu giá trị NVARCHAR(50) để có thể nhập giá trị chuỗi ký tự.
- Gia là kiểu giá trị INT để nhập giá trị nguyên dương.


6. Bảng sử dụng dịch vụ:

![image](https://github.com/nd-wuangr26/Quan_ly_nha_tro/assets/166006721/7d73ef34-f2f6-40c5-add4-4e2443bf002c)

Thiết lập MaSuDung làm PrimaryKey để giá trị duy nhất của mỗi sử dụng dịch vụ. Thiết lập MaDichVu, MaHopDong làm ForignKey để tham chiếu bảng từ bảng hợp đồng và dịch vụ. Các kiểu giá trị thành phần của bảng: 

- STT kiểu giá trị là INT để có thể tăng dần theo số lượng mình nhập.
- MaSuDung là kiểu giá trị NVARCHAR(50) để có nhập giá trị kiểu chuỗi ký tự và nó là PK nên không thể được để dạng NULL.
- MaDichVu là kiểu giá trị NVARCHAR(50) để có nhập giá trị kiểu chuỗi ký tự và có yêu cầu đúng giá trị khi tham chiếu từ bảng DichVu.
- MaHopDong là kiểu giá trị NVARCHAR(50) để có nhập giá trị kiểu chuỗi ký tự và có yêu cầu đúng giá trị khi tham chiếu từ bảng HopDong.
- NgaySuDung là kiểu giá trị Date để có nhập giá trị ngày tháng.
- SoLuong là kiểu giá trị INT để nhập giá trị nguyên dương.


7. Sơ đồ thực thể:

Từ những PK và FK của các bảng thiết lập được mối quan hệ của sơ đồ thực thể.

![image](https://github.com/nd-wuangr26/Quan_ly_nha_tro/assets/166006721/60c3175e-7277-48d2-a8c3-aadac0d61404)


**4. Các SP chức năng**

1. PROCEDURE thêm phòng mới

```sql
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
```
![image](https://github.com/nd-wuangr26/Quan_ly_nha_tro/assets/166006721/f5480971-0264-4a90-9d72-0402f556b9b0)

2. PROCEDURE xóa phòng

```sql
--- Xoa phong ---
CREATE PROCEDURE XoaPhong
@MaPhong INT
AS
BEGIN
   DELETE FROM Phong WHERE MaPhong = @MaPhong;
END;
```

3. PROCEDURE sửa thông tin phòng

```sql
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
```
4. PROCEDURE thêm người thuê mới

```sql
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
```

5. PROCEDURE xóa người thuê
```sql
--- Xoa nguoi thue ---
CREATE PROCEDURE XoaNguoiThue
@MaNguoiDung INT
AS
BEGIN
   DELETE FROM NguoiThue WHERE MaNguoiDung = @MaNguoiDung;
END;
```

6. PROCEDURE sửa thông tin người thuê

```sql
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
```
7. PROCEDURE thêm hợp đồng

```sql
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
```
8. PROCEDURE xóa hợp đồng

```sql
--- Xoa hop dong ------

CREATE PROCEDURE XoaHopDong
@MaHopDong INT
AS
BEGIN
   DELETE FROM HopDong WHERE MaHopDong = @MaHopDong;
END;
``` 

9. PROCEDURE sửa thông tin hợp đồng

```sql
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
```   

10. PROCEDURE báo cáo số lượng phòng còn trống

```sql
--- Bao cao so luong phong trong ----------
CREATE PROCEDURE BaoCao
	
AS
BEGIN
    SELECT *
    FROM Phong
    WHERE TinhTrang = 'Trong';
END;
```
![image](https://github.com/nd-wuangr26/Quan_ly_nha_tro/assets/166006721/8089581d-16e6-44e9-a97a-5d35ebc2ba10)


11. Sử dụng trigger và cursor cập nhật thông tin phòng sau khi sửa hợp đồng

```sql
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

```



  

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

- Bảng người thuê:
  

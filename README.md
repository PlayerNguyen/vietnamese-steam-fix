> Since June 2024, Vietnamese people have been unable to access Steam because the ISP blocked the address. This patch fixes the issue by appending some redirect rules under the Windows host file.

# Giới thiệu
Vào tháng 6, 2024, Steam bị chặn bởi chính phủ và các nhà mạng ISP tại Việt Nam. Script này sẽ đơn giản hóa việc bạn có thể vào Steam bằng cách thêm vài dòng trong hosts. Chi tiết có thể xem ở source code.

Để đơn giản hóa việc cài đặt, chỉ cần dán vào và dùng. Tránh việc cài đặt phức tạp như phải tải về ứng dụng proxy, thiết lập DNS... Thì script này sẽ sửa file host để trỏ tên miền tới IP tại server Singapore (không bị chặn bởi ISP của Việt Nam).  

# Cài đặt
## Windows 10 trở lên
- Mở Powershell dưới quyền admin.
- Dán lệnh bên dưới vào.
  ```powershell
  irm https://raw.githubusercontent.com/PlayerNguyen/vietnamese-steam-fix/main/fix-steam-host.ps1 | iex
  ```
- Tệp sẽ được chạy, sau khi xong nhấn Enter và thiết bị sẽ truy cập vào được Steam.
## Windows 7, 8
Hiện vẫn chưa có test case nào đối với Windows 7, 8. Hoặc các bạn chạy thử hoặc nâng cấp lên Windows 10 giúp nhé. Yêu <3 
# Linux và MacOS
Đối với patch này chỉ làm cho Windows vì 99.999999% người dùng Windows điều có Steam trên máy để chơi game. Tuy nhiên bạn có thể xem file fix-host-steam.ps1 để xem cách hoạt động, hoặc bạn có thể dùng 1.1.1.1 để dùng DNS của Cloudflare. 

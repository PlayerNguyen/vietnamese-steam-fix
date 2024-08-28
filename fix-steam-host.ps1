# Define the lines to be appended
$entries = @"
#--------------------------
# Fix Steam Host          |
#--------------------------
23.40.36.77 store.steampowered.com      #steam_asian_pacific
184.51.97.157 store.steampowered.com    #steam_asian_pacific
23.36.252.78 store.steampowered.com     #steam_asian_pacific
23.53.225.65 store.steampowered.com     #steam_asian_pacific
23.35.101.126 store.steampowered.com    #steam_asian_pacific
"@

# Path to the hosts file
$hostsPath = "$env:SystemRoot\System32\drivers\etc\hosts"

# Append the entries to the hosts file
Add-Content -Path $hostsPath -Value $entries

Write-Output "Đã thêm tất cả địa chỉ IP vào tệp hosts của Windows, nếu không vào được hãy tải lại."
Write-Output "Một số máy tính ở nơi công cộng (Net, Cyber) sẽ bị đóng băng tệp, nên hãy chắc chắn rằng bạn đã gỡ đóng băn để fix lỗi này."

# Wait for user input before exiting
Write-Host "Nhấn bất kỳ phím nào để thoát..."
Read-Host

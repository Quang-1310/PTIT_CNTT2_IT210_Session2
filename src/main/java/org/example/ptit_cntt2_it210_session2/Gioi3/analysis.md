1.
Thông báo lỗi đăng nhập bản chất là dữ liệu tạm thời, chỉ có giá trị ngay sau khi 
một hành động thất bại xảy ra. Việc lưu vào Request Scope giúp thông báo này 
tự động biến mất sau khi người dùng nhìn thấy trang.

Nếu lưu nhầm vào Session Scope: Sau khi đăng nhập sai, người dùng quay lại 
trang login và thấy thông báo lỗi. Tuy nhiên, kể cả khi tải lại trang
hoặc đi chỗ khác rồi quay lại, thông báo vẫn sẽ nằm ở đó, gây hiểu lầm rằng
vẫn đang gặp lỗi dù chưa hề bấm nút đăng nhập lại.

2. 
totalViewCount là biến dùng cho toàn bộ hệ thống từ khi mới khởi tạo
Application Scope là vùng nhớ dùng chung duy nhất cho tất cả mọi người dùng. 
Khi bất kỳ ai xem đơn hàng, biến này tăng lên và tất cả những người khác đều 
thấy con số mới nhất đó.
Nếu lưu vào Session Scope, con số này sẽ trở thành "Số lần xem của riêng cá nhân đó".

3.
Race Condition xảy ra khi có nhiều luồng cùng truy cập và chỉnh sửa một dữ liệu
dùng chung tại cùng một thời điểm. Kết quả cuối cùng phụ thuộc vào việc
"ai chạy nhanh hơn", dẫn đến dữ liệu bị sai lệch.
Cách phòng tránh: dùng synchronized
1. Vị trí <%! private int requestCounter = 0; %> Loại vấn đề: Race Condition Biến khai báo trong <%! %> là biến instance của Servlet. Khi nhiều người truy cập cùng lúc, việc cộng dồn không được đồng bộ sẽ dẫn đến sai số

2. Vị trí <%= sv.getFullName() %> Loại vấn đề: XSS (Cross-Site Scripting) Dữ liệu được in trực tiếp ra HTML. Nếu fullName chứa mã độc (vídụ: <script>...), trình duyệt sẽ thực thi mã đó, gây nguy hiểm cho người dùng

3. Vị trí <%= sv.getScore()%>; Loại vấn đề: Syntax Error (Dư dấu ;) Trong Expression <%= %>, trình duyệt sẽ in ra mọi thứ bên trong. Dấu ; sẽ bị hiển thị lên màn hình như một ký tự văn bản, làm xấu giao diện

4. Vị trí if (sv.getScore() >= 90) { ... } Loại vấn đề Logic trong View Việc tính toán xếp loại ngay trong JSP vi phạm mô hình MVC. View chỉ nên hiển thị, logic tính toán nên nằm ở Model hoặc Controller để dễ bảo trì và tái sử dụng.

5. Vị trí `` Loại vấn đề Comment HTML Đây là comment gửi về phía client. Người dùng có thể chuột phải chọn "View Source" để đọc được các ghi chú nội bộ, gây lộ thông tin logic hoặc cấu trúc code.
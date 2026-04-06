1.
XSS (Cross-Site Scripting) là lỗ hổng xảy ra khi ứng dụng web hiển thị dữ liệu do người dùng nhập vào mà không được kiểm tra hoặc làm sạch
<c:out value="${keyword}"/> an toàn hơn vì: Thẻ <c:out> tự động chuyển đổi các ký tự đặc biệt của HTML (như <, >, &, ") thành các thực thể HTML tương ứng.
So sánh Output:
Input: <script>alert(1)</script>
Output của ${keyword}: <script>alert(1)</script> (Trình duyệt chạy script).
Output của <c:out>: <script>alert(1)</script> (Trình duyệt hiển thị dưới dạng văn bản thuần túy).

2.
<c:if>: Giống như lệnh if đơn lẻ. Nó chỉ kiểm tra một điều kiện duy nhất. Nếu bạn muốn kiểm tra nhiều trường hợp (như else if), bạn phải viết nhiều thẻ <c:if> rời rạc, dẫn đến việc hệ thống phải kiểm tra tất cả các thẻ ngay cả khi điều kiện đầu đã đúng.

<c:choose>: Giống như cấu trúc if - else if - else hoặc switch-case. Nó sẽ kiểm tra từ trên xuống dưới, hễ gặp điều kiện <c:when> nào đúng đầu tiên thì thực thi và dừng lại ngay lập tức, bỏ qua các lựa chọn còn lại.
Nên dùng <c:choose>.
Áp dụng: Trong bài này, phần "Vé còn lại" nên dùng <c:choose> vì có 3 trạng thái rõ rệt (Hết vé, Sắp hết, Bình thường). Phần "Giá vé" có thể dùng <c:if> cho trường hợp Miễn phí và định dạng số cho trường hợp còn lại.

3.
Thẻ <c:url> giúp quản lý Context Path của ứng dụng một cách tự động và thông minh. Nó đảm bảo các đường dẫn (link, ảnh, css, js) luôn luôn đúng dù ứng dụng được deploy ở bất kỳ đâu.
Nếu context là /ticketing, <c:url value="/events/1/book"/> sẽ sinh ra: /ticketing/events/1/book. Ngoài ra, nó còn hỗ trợ tự động đính kèm jsessionid nếu trình duyệt tắt Cookie
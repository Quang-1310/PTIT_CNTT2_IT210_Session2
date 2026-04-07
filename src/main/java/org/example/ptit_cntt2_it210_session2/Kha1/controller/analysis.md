 1. "/api/*" khiến mọi request đến /welcome đều bị 404 bởi vì: nó làm cho dispatcherservlet chỉ nhận được phép xử lý các request bắt đầu = /api/

 2.Lỗi trong WebConfig.java: @ComponentScan(basePackages = "com.demo.service") gây ra hậu quả: giới hạn Spring chỉ tìm kiếm các Bean  trong package service Spring không tìm thấy @Controller trong com.demo.controller và các package khác ngoài service

 3. Ứng dụng không chạy được: nếu chỉ sửa lỗi 1 thì dispatcherservlet sẽ tìm thấy URL /welcome nhưng lỗi 2 khiến WelcomeController không được Spring quản lý, Spring sẽ không biết phải chuyển request này cho phương thức nào xử lý

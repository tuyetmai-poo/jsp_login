# JSP Servlet Login

Bài thực hành Java JSP/Servlet: đăng nhập bằng phương thức POST.

## Yêu cầu
- JDK 17
- Maven
- Apache Tomcat 10.1+

## Chức năng
- Trang `index.jsp` có form nhập username/password.
- Form gửi dữ liệu bằng POST tới `/login`.
- Tài khoản `admin` / `admin`: hiển thị `Welcome admin to website`.
- Sai tài khoản hoặc mật khẩu: hiển thị `Login Error`.

## Chạy dự án
1. Mở terminal tại thư mục chứa `pom.xml`.
2. Chạy `mvn clean package`.
3. Sau khi Maven báo `BUILD SUCCESS`, file WAR nằm tại `target/jsp-servlet-login.war`.
4. Copy file WAR vào thư mục `webapps` của Tomcat 10.1+.
5. Khởi động Tomcat.
6. Mở `http://localhost:8080/jsp-servlet-login/`.

## Cấu trúc chính
- `src/main/webapp/index.jsp`: giao diện đăng nhập.
- `src/main/java/com/codegym/LoginServlet.java`: xử lý POST.
- `src/main/webapp/WEB-INF/web.xml`: cấu hình web.

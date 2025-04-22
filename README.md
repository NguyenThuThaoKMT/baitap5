# baitap5
**Bài tập 5 của sv: K225480106060_NguyenThuThao_HQTCSDL
BÀI TẬP VỀ NHÀ 05, Môn Hệ quản trị csdl.

SUBJECT: Trigger on mssql

A. Trình bày lại đầu bài của đồ án PT&TKHT:
1. Mô tả bài toán của đồ án PT&TKHT, 
   đưa ra yêu cầu của bài toán đó
2. Cơ sở dữ liệu của Đồ án PT&TKHT :
   Có database với các bảng dữ liệu cần thiết (3nf),
   Các bảng này đã có PK, FK, CK cần thiết
 
B. Nội dung Bài tập 05:
1. Dựa trên cơ sở là csdl của Đồ án
2. Tìm cách bổ xung thêm 1 (hoặc vài) trường phi chuẩn
   (là trường tính toán đc, nhưng thêm vào thì ok hơn,
    ok hơn theo 1 logic nào đó, vd ok hơn về speed)
   => Nêu rõ logic này!
3. Viết trigger cho 1 bảng nào đó, 
   mà có sử dụng trường phi chuẩn này,
   nhằm đạt được 1 vài mục tiêu nào đó.
   => Nêu rõ các mục tiêu 
4. Nhập dữ liệu có kiểm soát, 
   nhằm để test sự hiệu quả của việc trigger auto run.
5. Kết luận về Trigger đã giúp gì cho đồ án của em.

-----------------------------------------------------------------------------------------------------------------------------------------


A. Trình bày lại đầu bài của đồ án PT&TKHT:
- Yêu cầu của đồ án:
"Phân tích thiết kế hệ thống quản lí nhân sự cho công ty Luxshare ICT"
- Tạo 1 cơ sở dữ liệu QuanLyNhanSu gồm các bảng:
  + nhân sự:

    ![image](https://github.com/user-attachments/assets/e45d83a0-21bc-4546-963c-c83d46e5380c)

  + tài khoản:
 
    ![image](https://github.com/user-attachments/assets/8a1decae-34de-424e-acab-585a1263303c)

  + ứng viên ( ứng tuyển):
 
    ![image](https://github.com/user-attachments/assets/4c798cc2-673f-4d14-8ddb-f0c2d8dfab67)

  + đào tạo:
 
    ![image](https://github.com/user-attachments/assets/43840e45-c7ce-4924-ad54-cf12c311e68d)

  + kết quả đào tạo:
 
    ![image](https://github.com/user-attachments/assets/aaad9423-c1c8-48ef-9c86-b81a8310bb70)

  + chấm công:
 
    ![image](https://github.com/user-attachments/assets/f2b4f716-b3a2-4866-90c7-7baca15826ac)

  + lương:

 ![image](https://github.com/user-attachments/assets/90584b75-0c94-492b-9300-c3d32e30c472)

  + khen thưởng:

    ![image](https://github.com/user-attachments/assets/48e9e66a-92be-4b7d-b508-9c043398e43d)

  + nghỉ phép:

    ![image](https://github.com/user-attachments/assets/13815dc0-e5e4-49dc-b1cc-6d521d70b6d7)

  + hợp động lao động:

    ![image](https://github.com/user-attachments/assets/5a7babab-6d4b-49c2-9440-19fc930ef49b)

  + bảo hiểm xã hội:

    ![image](https://github.com/user-attachments/assets/5ae2f731-c666-437a-b022-b371def558ec)

  - Các khóa chính đã được thể hiện ở trên ảnh các bảng, sau đây là liên kết các khóa ngoại:

    ![image](https://github.com/user-attachments/assets/9f04c92a-f33b-4604-8899-bb1093bed62c)

    ![image](https://github.com/user-attachments/assets/f63f1790-f2a5-4ffc-9f0b-f734312a26c2)

    ![image](https://github.com/user-attachments/assets/2d015e31-cd69-473b-9054-c83706296bed)

    ![image](https://github.com/user-attachments/assets/1922071a-2a09-46e3-9dd1-99297112d2d6)

    ![image](https://github.com/user-attachments/assets/7ad6691d-5075-475a-a2a1-3b5cef693cb2)

    ![image](https://github.com/user-attachments/assets/ec2402a6-6157-466f-a540-3e08936aaabd)

    ![image](https://github.com/user-attachments/assets/fc7bf916-0d42-4966-918b-04052e8075bc)

    ![image](https://github.com/user-attachments/assets/fc0a3e05-db3b-4dbb-8b72-d3f66e97eaa4)

    

B. Nội dung Bài tập 05:
1. Dựa trên cơ sở là csdl của Đồ án
2. Tìm cách bổ xung thêm 1 (hoặc vài) trường phi chuẩn
   (là trường tính toán đc, nhưng thêm vào thì ok hơn,
    ok hơn theo 1 logic nào đó, vd ok hơn về speed)
   => Nêu rõ logic này!

- Trong bảng bảo hiểm, có trường phi chuẩn là mã nhân sự để not null, trong trường hợp không có nhân sự mới thì sẽ không được điền thêm thông tin vào bảo hiểm vì vậy chúng ta thêm 1 trigger để ngăn chặn thao tác đó:

  ![image](https://github.com/user-attachments/assets/1d5b6584-0028-400c-afa2-a5c4d4e7c3af)

- Khi 1 nhân sự nghỉ việc, việc xóa dữ liệu thông tin trong bảng nhân sự thì trigger sẽ giúp tự động xóa thông tin bảng lương, chấm công, bảo hiểm,.. của nhân sự đó:

  ![image](https://github.com/user-attachments/assets/0cc08c72-69e0-41f4-9c56-c1b49d07eba6)

- Thêm 1 trigger vào bảng lương để tự động cập nhật tổng lương mỗi tháng của nhân sự dựa trên số công làm ( làm đủ mới được nhận 100% lương cơ bản, phụ cấp,..)

  ![image](https://github.com/user-attachments/assets/d5c66183-f0ae-4945-b53e-d68804bbfa7a)

3. Nhập dữ liệu có kiểm soát cho các bảng để test trigger
4. Kết quả test trigger auto run

trước khi xóa thông tin nhân sự 5:

![image](https://github.com/user-attachments/assets/ff3bd10b-5d70-471b-941b-c0a8e0252cd5)

![image](https://github.com/user-attachments/assets/f6f6cef3-2367-4407-9383-8410351fda11)

sau khi xóa thông tin nhân sự 5:

![image](https://github.com/user-attachments/assets/a06fbbd3-62c5-43a3-9326-9f73e8b0e682)

![image](https://github.com/user-attachments/assets/73d39219-929d-4ca1-9c3a-d2d365495b51)

bảng bảo hiểm đã tự động xóa toàn bộ thông tin nhân sự 5

- Cố ý thêm thông tin bảo hiểm cho 1 nhân sự không tồn tại:

  ![image](https://github.com/user-attachments/assets/115fafea-2d73-495d-b638-7fd82219d49f)




















    






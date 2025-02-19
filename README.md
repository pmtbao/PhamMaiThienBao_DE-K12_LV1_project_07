# PhamMaiThienBao_DE-K12_LV1_project_07

### Yêu cầu tiên quyết: [project_5-6](https://github.com/pmtbao/PhamMaiThienBao_DE-K12_LV1_project_05.git)

## Mô tả files và folders:
- [dim_date.sql](dim_date.sql): file tạo chiều thời gian (date dimension) để phục vụ phân tích.
- [dim_date.csv](dim_date.csv): file .csv được tạo ra sau khi chạy [](dim_date.sql).
- [dbt_venv](dbt_venv): folder chứa cấu hình môi trường ảo để thực thi dbt model.
- [glamira_test](glamira_test): folder chứa model thực thi

## Quy trình thực thi (Windows):
- Clone code về và giải nén thư mục.
- Truy cập vào thư mục bằng VS Code .
- Sử dụng môi trường ảo được cấu hình trong dbt_venv [dbt_venv/Scripts/Activate.ps1](dbt_venv/Scripts/).
- Sử dụng trình python.exe được cài đặt trong dbt_venv [dbt_venv/Scripts/python.exe](dbt_venv/Scripts/).
- Cấu hình các file .yml cần thiết để có thể kết nối với BigQuery. (*file profiles.yml* và *.user.yml* trong thư mục C:\Users\...\.dbt)
- Truy cập (cd) vào thư mục glamira_test.
- Run model trong [glamira_test/models](glamira_test/models).
  -   |- staging
  -   |- analytics

## Biểu đồ phân tích dữ liệu: [Visualization](https://lookerstudio.google.com/reporting/d3230427-6d83-4f48-aaa6-fd98b042b91b)

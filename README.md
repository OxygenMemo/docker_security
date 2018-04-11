# มันคืออะไร
    คือ การใช้ docker โดยเขียนไฟร์ compose เอาไว้ โดยสามารถใช้ docker โดยไม่ต้องมา
    docker run -d -it -p 80:80 ....... บลาๆๆๆ
    ทีละหลายๆคำสั่ง
# รายระเอียด
  ใน File compose นี้ใช้ mockserver เขียนเว็ปในเครื่อง โดยประกอบด้วย

1. mariadb (database)
2. nimmis/apache-php7 (webserver port 80)
3. phpmyadmin/phpmyadmin (port 8888)
## วิธีใช้แบบ Quick Start
1. เปิด cmd หรือ terminal

2. git clone https://github.com/OxygenMemo/docker_security.git

3. เปิด docker ด้วยไม่เปิดจะใช้อะไร WTF

4. cd docker_security

5. จากนั้นจะมี done 3 ครั้ง ขึ้นตรง terminal/cmd แปลว่า contrainer ของเรา 3 ตัวทำงานได้แล้ว เย้

6. เราสามารถเข้า webserver ได้ที่ localhost

7. หากต้องการเขียนเว็ป ก็เขียนใน directory ./webserver

8. หากต้องการ setup database ให้เข้าไปแก้ไฟร์ใน `./DB/initdb/mydb.sql` โดยมีตัวอย่าง database myapp และการสร้าง user table ไว้ให้
    
9. start.sh (รัน file ตาม OS ที่ใช้ window .bat linux .sh) 

## คุณก็สามารถเขียนเว็ปได้แล้วเย่ 

# หากต้องการกำหนดค่า
   สามารถแก้ใขได้ในไฟร์ docker-composer.yml เช่น port webserver ฯลฯ
   
## database init

   ### การเก้คำสั่ง sql ตอนเริ่ม 
    ให้เข้าไปแก้ไฟร์ใน `./DB/initdb/mydb.sql`
    โดยในนั้นจะมีตัวอย่างการสร้าง table user อยู่แล้ว คุณสามารถลบออกไปได้เลย แต่คุณต้องเหลือ 
    บรรทัดแรกเอาไว้ `use myapp` (คือเลือก database ) 
    
    ข้อดีคือ ทุกครั้งที่ start.sh มันจะเริ่มคำสั่ง ในไฟร์ mydb.sql ใหม่ทั้งหมดตอนสร้าง contrainer หากต้องการ
    mock data สามารถ ใส่คำสั่ง insert ไว้ใต้คำสั่งสร้างตารางได้เลย 
   ### database comfig
    หากต้องการเปรี่ยนชื่อ database สามารถแก้ได้ในไฟร์ `docker-compose.yml` ได้เลยตรงที่
    `MYSQL_DATABASE=myapp` และคุณสามารถแก้ใข root password ได้ที่ บรรทัด `MYSQL_ROOTPASSWORD=p@ssw0rd`

  


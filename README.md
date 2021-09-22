# CheckIDcardNumber
## MounteBank
- สำหรับการ Mock Api ที่ใช้ในการเช็คตัวเลขขึ้นต้นของ ID card <br>
(โดยหลักการดังกล่าวได้มีการเริ่มใช้เมื่อวันที่ 1 มกราคม 2527)

## Robot Framework
ใช้สำหรับทดสอบ MounteBank ที่สร้างขึ้นมาโดยมี case ดังนี้ <br>
> Case 1 : ทดสอบเลข ID card ที่ขึ้นต้นด้วย 1, 2 <br>
โดยต้องมี Response (success) : thai people/nationality thai<br>

> Case 2 : ทดสอบเลข ID card ที่ขึ้นต้นด้วย 3, 4, 5 <br>
โดยต้องมี Response (success) : thai people/alien<br>

> Case 3 : ทดสอบเลข ID card ที่ขึ้นต้นด้วย 6 <br>
โดยต้องมี Response (success) : alien<br>

> Case 4 : ทดสอบเลข ID card ที่ขึ้นต้นด้วย 7 <br>
โดยต้องมี Response (success) : child of alien person<br>

> Case 5 : ทดสอบเลข ID card ที่ขึ้นต้นด้วย 8 <br>
โดยต้องมี Response (success) : alien a thai person<br>

> Case 6 : ทดสอบเลข ID card ที่ขึ้นต้นด้วย 0 <br>
โดยต้องมี Response (success) : non-registered person<br>
    
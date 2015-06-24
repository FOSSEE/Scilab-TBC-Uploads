// Example 4.20 page no-241
clear
clc

vdd=30 //v
rl=4.7 //k-ohm
vd=20  //v
id=(vdd-vd)/rl
printf("\nId = %.1f mA",id)
printf("\nfor vd to be constant, it should be within ±1V")
del_id=1/rl
printf("\nDelta_Id = ± %.1f mA\nId(min) = %f mA\nId(max) = %f mA" ,del_id,id-del_id,id+del_id)

delv=vdd-vd
deli=2.5 //mA
rs=delv/(deli)
printf("\nRs = %d K-Ohm",rs)

 

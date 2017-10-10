P=850//in kN
sigma_cc=4//in MPa
m=18.66//modular ratio
sigma_sc=130//in MPa
Lef=5*1.001//effective length, in m
//assume 1% steel
Ag=P*10^3/(sigma_cc*0.99+sigma_sc*0.01)//in sq mm
l=sqrt(Ag)//in mm
l=400//approximately, in mm
a=Lef*1000/l
//as a>12, it is a long column
//Method I-section to be changed
b=Lef*1000/12//in mm
b=420//approximately, in mm
Ag=b^2//in sq mm
Asc=(P*1000-sigma_cc*Ag)/(sigma_sc-sigma_cc)//in sq mm
minimum_steel=0.8/100*b^2//in sq mm
//as Asc < minimum steel
Asc=minimum_steel//in sq mm
//assume 20 mm dia bars
n=Asc/(%pi/4*20^2)//no. of bars
n=5//round-off
//design of links
dia=1/4*20//in mm
//as dia < 6 mm, provide 6 mm diameter links
dia=6//in mm
spacing=min(b,16*20,48*dia,300)//in mm
mprintf("Method I\nColumn size %d x %d mm\nMain steel =%d-20 mm dia bars\nLinks=6 mm dia links @ %d mm c/c\n", b,b,n,spacing)
//Method II-same section
b=400//in mm
Ag=b^2//in sq mm
Cr=1.25-Lef*1000/(48*b)//reduction coefficient
sigma_cc=Cr*sigma_cc//in MPa
sigma_sc=Cr*sigma_sc//in MPa
Asc=(P*1000-sigma_cc*Ag)/(sigma_sc-sigma_cc)//in MPa
n=round(Asc/(%pi/4*20^2))//no. of bars
//design of links
dia=1/4*20//in mm
//as dia < 6 mm, provide 6 mm diameter links
dia=6//in mm
spacing=min(b,16*20,48*dia,300)//in mm
mprintf("Method II\nColumn size %d x %d mm\nMain steel =%d-20 mm dia bars\nLinks=6 mm dia links @ %d mm c/c", b,b,n,spacing)

P=400//in kN
b=200//width, in mm
sigma_cc=4//in MPa
sigma_sc=190//in MPa
Lef=3.5//effective length, in m
//assume 1% steel
Ag=P*10^3/(sigma_cc*0.99+sigma_sc*0.01)//in sq mm
D=Ag/b//in mm
D=340//round-off, in mm
a=Lef*1000/b
//as a > 12, it is a long column
Cr=1.25-Lef*1000/(48*b)//reduction coefficient
sigma_cc=Cr*sigma_cc//in MPa
sigma_sc=Cr*sigma_sc//in MPa
Asc=(P*1000-sigma_cc*Ag)/(sigma_sc-sigma_cc)//in sq mm
//assume 18 mm dia bars
n=Asc/(%pi/4*18^2)//no. of bars
n=4//round-off
//design of links
dia=1/4*20//in mm
//as dia < 6 mm, provide 6 mm diameter links
dia=6//in mm
spacing=min(b,16*20,48*dia,300)//in mm
mprintf("Column size %d x %d mm\nMain steel =%d-18 mm dia bars\nLinks=6 mm dia links @ %d mm c/c\n", b,D,n,spacing)

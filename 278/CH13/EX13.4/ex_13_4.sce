//design muff coupling
clc
//solution
//given
P=40000//W
N=350//rpm
ts=40//N/mm^2
fcs=80//N/mm^2
tc=15//N/mm^2
//let d be dia
Tq=(P*60*1000)/(2*%pi*N)//N-mm
//Tq=(%pi/16)*ts*d^3=7.86*d^3
//d=(Tq/7.86)^(1/3)//mm
printf("the dia of shaft is,%f mm\n ",(Tq/7.86)^(1/3))
printf("the dia of shaft is ,say 55mm\n")
d=55//mm
D=2*d + 13//mm
printf("the outer dia of muff is,%f mm\n",D)
L=3.5*d//mm
printf("the length of muff is,%f mm\n",L)
//let tc be induced shear stress
//T=(%pi/16)*tc*[(D^4-d^4)/D] =370*10^3*fc
fc=Tq/370000//N/mm^2
printf("the induced shear stress is,%f N/mm^2 \n",fc)
//from table 13.1,we find that shaft of dia 55mm diametr
w=18//width of diametre
t1=w//mm//thicknessof key
l=L/2//mm//length of key
printf("the widht of key is,%f mm\n ",w)
printf("the thickness of key is,%f mm\n",t1)
printf("the length of key is,%f mm\n",l)


clc
//initialisation of variables
v=10/3.0//ft^2/lbm
p=100//lbf/in^2
xx=1-(1.099/4.414)//lbm
vf=0.01774//lbm
vg=4.432//lbm
mliq=3*0.249//lbm
mvap=3*0.751//lbm
//CALCULATIONS
Vliq=mliq*vf//ft^3
Vvap=mvap*vg//ft^3
//RESULTS
printf('the volume of liquid =% f ft^3',Vliq)
printf('the volume of the vapor % f ft^3',Vvap)

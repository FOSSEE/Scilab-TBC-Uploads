//Transmission Lines : example 12-9 : (pg 599)
j=%i;
RL=120;//load resistance from smith chart
ZL=75+j*50;//load impedance
Z0=50;//characteristic impedance
a=75/Z0;
y=50/Z0;//normalized load impedance
z=2.4;//normalized z at a point that is purely resistive
ar=z*Z0;//actual resistance
x=sqrt(Z0*RL);
printf("\nzl = ZL/Z0 = %.1f + j*%.f",a,y);
//VSWR,zin,R can be found out from smith chart manually
printf("\nZ0^ = sqrt(Z0*RL) = %.1f Ohm",x);//characteristic impedance of matcing section
//^ indicates (') complement sign
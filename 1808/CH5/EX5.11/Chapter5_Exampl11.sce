clc
clear
//INPUT DATA
nv=0.8;//volumetric efficiency in percentage
vc=3;//clearence volume in litre
p2=8;//air compressor pressure in bar
p1=0.98;//air compressor pressure in bar

//CALCULATIONS
vs=12.085/(1-nv);//stroke volume in m^3
d=((vs/1000)*4/3.14)^(1/3);//cylinder length in m

//OUTPUT
printf('(i)The stroke volume is %3.5f litre \n (ii)cylinder dimensions (l=d) is %3.4f m ',vs,d)

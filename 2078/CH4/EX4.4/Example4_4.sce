//Exa 4.4
clc;
clear;
close;
//Given data :
r=3;//mm
d11=r;//mm
d12=2*r;//mm
d34=2*r;//mm
d16=2*r;//mm
d17=2*r;//mm
d14=4*r;//mm
d13=sqrt(d14^2-d34^2);//mm
d15=d13;//mm
Ds1=(0.7788*d11*d12*d13*d14*d15*d16*d17)^(1/7);//mm
Ds2=Ds1;//mm
Ds3=Ds1;//mm
Ds4=Ds1;//mm
Ds5=Ds1;//mm
Ds6=Ds1;//mm
Ds7=(2*r*0.7788*d11*d12*d13*2*r*2*r)^(1/7);//mm
Ds=(Ds1*Ds2*Ds3*Ds4*Ds5*Ds6*Ds7)^(1/7);//mm
disp(Ds,"Geometric mean radius(mm)");
//Answer in the book is wrong

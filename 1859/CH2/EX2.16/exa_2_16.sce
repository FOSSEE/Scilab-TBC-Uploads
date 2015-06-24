// Exa 2.16
clc;
clear;
close;
// Given data
R1= 1;//in kohm
R1=R1*10^3;//in ohm
del_R1ByR1= 1;
del_R2ByR2= 1;
R2= 500;//in kohm
R= R1*R2/(R1+R2);//in ohm
// Let R= X/Y
X= R1*R2;
Y=R1+R2;
ErrorX= del_R1ByR1+del_R2ByR2;// with pos and neg
// ErrorY= del_R1/Y + del_R2/Y = R1/Y*del_R1ByR1 + R2/Y*del_R2ByR2
ErrorY= R1/Y*del_R1ByR1 + R2/Y*del_R2ByR2;// with pos and neg
PerError= ErrorX+ErrorY;// in % with pos and neg
disp(PerError,"Percentage error (maximum posible) in equivalent parallel resistance with pos and neg")
Error= 333.33*PerError/100;
Error=ceil(Error);
disp(Error,"Error (maximum possible) in equivalent parallel resistance in ohm")

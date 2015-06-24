//Example 11.8: rating of booster
clc;
clear;
close;
//given data :
format('v',8)
i=200;// A/km
r=0.01;//in ohms/km
x=poly(0,"x")
p=-20+8*x+0*x^2;//
y=roots(p);//km
i1=400;//in amperes
i2=(4-y)*i//in amperes
tc=i1+i2;//in amperes
vcn=r*tc;//in volts
nb=vcn-4;//in volts
rb=(tc*10)/1000;//
disp(rb,"rating of the booster in kW is")


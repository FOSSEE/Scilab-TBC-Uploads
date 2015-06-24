clc
clear

//INPUT
t1=1373;//temperature of the sphere in K
t2=283;//temperature of the black body in K
r=4.17*10^5;//rate of heat radiate in ergs/sq.cm/sec
a=4*3.14*(6^2);//surface area of the sphere in sq.cm

//CALCULATIONS
tr=r*a*(t1^4/t2^4)*(2.39005736*10^(-8));//total heat radiated in cal/sec

//OUTPUT
mprintf('total heat radiated is %3.2f cal/sec',tr)

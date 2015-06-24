// Exa 6.3
format('e',8)
clc;
clear;
close;
// Given data
f_osc = 6.5;// in kHz
f_osc = f_osc * 10^3;// in Hz
// f_osc = 1/(2*%pi*sqrt(6)*RC);
RC = 1/(2*%pi*sqrt(6)*f_osc);// in sec
disp(RC,"The value of RC in sec is : ")
format('v',5)
// Possible selection of R and C may be
R= 1;// in k ohm
C= RC/R;// in mF
C= C*10^3;// in µF
disp("The posible selection of R and C : ")
disp("(a) : "+string(R)+" kΩ and "+string(C)+" µF")
format('v',6)
R= 10;// in k ohm
C= RC/R;// in mF
C= C*10^3;// in µF
disp("The posible selection of R and C : ")
disp("(a) : "+string(R)+" kΩ and "+string(C)+" µF")



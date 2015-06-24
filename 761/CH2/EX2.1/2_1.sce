clc;
//page no 50
//prob no 2.1
//Refer the fig 2.6 of page 50. L1=25uH;C1=50pF
L1=25*10^-6;C1=50*10^-12;Q=15;
//A) The resonent freqency is given as
fo=(1/(2*%pi*sqrt(L1*C1)));
disp('Hz',fo,'a)The resonent frequency is ');
//B) The bandwidth is given as 
B=fo/Q;
disp('Hz',B,'The bandwidth is ');
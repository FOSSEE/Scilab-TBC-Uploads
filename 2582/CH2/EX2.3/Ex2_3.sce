//Ex 2.3
clc;clear;close;
format('v',5)
Gm1=10;//mA/V
Gm1=Gm1/1000;//A/V
Cc=50;//pF
Cc=Cc*10^-12;//F
Rt=10^8;//ohm(Shunting resistance with Cc)
Ao=Gm1*Rt;//unitless
fp=1/(2*%pi*Rt*Cc);//Hz
ft=Gm1/(2*%pi*Cc)/10^6;//MHz
disp(fp,"Frequency at which gain is maximum, fp in Hz");
disp(ft,"Unit gain frequency, ft(MHz)");
//Bode plot can not be plotted with the given data in the question by using scilab functions. 

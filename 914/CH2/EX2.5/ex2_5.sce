clc;
warning('off');
printf("\n\n example2.5 - pg31");
// given
d=0.0013;  //[m] - diameter of the tube
delx=1;  //[m] - length of the glass tube
T2=110.6;  //[degC] - temperature on one end of the rod
T1=0;  //[degC] - temperature on other side of the rod
k=0.86;  //[W/m*K] - thermal conductivity
Hf=333.5;  //[J/g] - heat of fusion of ice
// (a)using the equation (q/A)=-k*(delt/delx)
A=(%pi*d^2)/4;
q=A*(-k*(T2-T1)/delx);
printf("\n\n (a) the heat flow is \n q=%fJ/sec",q);
// (b) dividing the total heat transfer in 30minutes by the amount of heat required to melt 1g of ice
a=abs((q*30*60)/333.5);
printf("\n\n (b)the amount or grams of ice melted in 30minutes is %fg",a);

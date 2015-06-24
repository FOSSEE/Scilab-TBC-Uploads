// Exa 2.22
clc;
clear;
close;
// Given data
C=1;// in miu F
C=C*10^-6;// in F
P=1000;// in ohm
Q=2000;// in ohm
r=200;// in ohm
S=2000;// in ohm
del_C_by_C= 1;
del_P_by_P= 0.4;
del_Q_by_Q= 1;
del_r_by_r= 0.5;
del_S_by_S= 0.5;
Lx= C*P/S*(r*(Q+S)+Q*S);// in Henry
disp(Lx,"Unknown inductance in Henry")
// Let
u=Q+S;// in ohm
Error_u= Q/u*del_Q_by_Q + S/u*del_S_by_S;// in %
// Let v= r*(Q+S) = r*u
v= r*(Q+S);
Error_v= del_r_by_r + Error_u;// in %
// Let 
x=Q*S;
Error_x= del_Q_by_Q + del_S_by_S;// in %
// Let y= r*(Q+S)+Q*S = v+x
y=v+x;
Error_y= v/y*Error_v + x/y*Error_x;// in %
del_Lx_by_Lx= del_C_by_C + del_P_by_P + del_S_by_S + Error_y;// in %
disp(del_Lx_by_Lx,"Percentage error in inductance")

//problem 2.20
clc;
clear;
close;
//given data :
format('v',6);
m=3;//no. of phase
TmaxBYTfl=2.5;//ratio
R2=0.5;//in ohm/phase
X2=5;//in ohm/phase
//Formula: Tst=K*E2^2*R2/(R2^2+X2^2) and Tm=K*E2^2/(2*X2)
TstBYTfl=TmaxBYTfl*2*X2*R2/(R2^2+X2^2);//ratio
disp(TstBYTfl,"(a) For direct on line starting, ratio starting torque to Full load torque is : ");
//For star delta starting :
TstBYTfl=(1/3)*TmaxBYTfl*2*X2*R2/(R2^2+X2^2);//ratio
disp(TstBYTfl,"(b) For star delta starting, ratio starting torque to Full load torque is : ");
//For auto transformer starting with tapping at 75 %
TstBYTfl=(75/100)^2*TmaxBYTfl*2*X2*R2/(R2^2+X2^2);//ratio
disp(TstBYTfl,"(c) For star delta starting, ratio starting torque to Full load torque is : ");

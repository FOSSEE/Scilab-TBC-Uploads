//chapter 12
//example 12.6
//page 419
Vr=10;//let suppose
n=4;//4-bit R/2R ladder
Res=.5;// given Resolution
//Resolution=(1/2^n*Vr/R)*Rf
Rf=10;//let choose
R=(1/2^n)*(Vr/Res)*Rf;
disp(R)
//Exa 3.17
clc;
clear;
close;
format('v',6);

//Given Data :
T1=27+273;//K
T2=-23+273;//K
W=1;//KW
Q2=20000;//KJ/hr
Q2=Q2/3600;//KJ/s
ActualCOP=Q2/W;
disp(ActualCOP,"Actual COP of machine : ");
IdealCOP=T2/(T1-T2);
disp(IdealCOP,"Ideal COP of machine : ");
disp("ActualCOP>IdealCOP, Inventor claim is wrong.");

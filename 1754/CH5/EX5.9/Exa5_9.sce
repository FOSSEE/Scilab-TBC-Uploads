//Exa 5.9
clc;
clear;
close;
//Given data :
A=200;//gain without feedback(unitless)
Ri=2;//in kOhm
Ro=12;//in kOhm
Beta=0.02;//feedbak ratio(unitless)
//Part (i) :
Af=A/(1+A*Beta);//gain with feedback(unitless)
disp(Af,"(i) Gain with Negative Feedback :");
//Part (ii) :
Rif=Ri*(1+A*Beta);//in kOhm
disp(Rif,"(ii) Input resistance with feedback in kOhm :");
//Part (ii) :
Rof=Ro/(1+A*Beta);//in kOhm
disp(Rof,"(ii) Output resistance with feedback in kOhm :");
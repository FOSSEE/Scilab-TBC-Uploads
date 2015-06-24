// Example 6.19;//A,Beta,Rif,Af amd loop gain
clc;
clear;
close;
R1=1;//resistance in killo ohms
R2=20;// resistance in killo ohms
Re=100;//emitter resistance in  ohms
//H Paramters are
hie=2;//in killo ohms
hfe=80;
Rl=1;//load resistance in killo ohms
Ri=hie;//input resistance in killo ohms
A= -(hfe*Rl*10^3)/(hie*10^3);//
Beta=Re/(Rl*(10^3));//GAIN
Rif= (hie*10^3+(1+hfe)*Re)*10^-3//input resistance with feedback in killo ohms
Av=(-(hfe*(Rl*10^3/Rif*10^3)))*10^-6;// Voltage Gain
BetaA= Beta*A;//loop gain
BetaAd= 20*(log10(-BetaA));//loop gain in dB
disp(A,"Voltage Gain is")
disp(Beta,"Gain is")
disp(Rif,"input resistance with feedback in killo ohms is")
disp(Av," Voltage gain with feedback is")
disp(BetaAd,"loop gain in dB is")



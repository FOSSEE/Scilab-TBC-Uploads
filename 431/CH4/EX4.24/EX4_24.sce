//Calculate speed of motor and maximium torque
//Chapter 4
//Example 4.24
//page 321
clear;
clc; 
disp("Example 4.24")
V=400;                //supply voltage in volts
f=50;                    //frequency in hertz
P=6;                  //number of poles
ph=3;                  //three phase supply
R2=0.03;                //rotor resistance in ohms
X20=0.4;                 //rptor reactance in ohms
Nr=960;                //full load speed in rpm
Ns=(120*f)/P;
printf("synchronous speed=%drpm",Ns)
S=(Ns-Nr)/Ns;            //corresponding slip
//maximium torque Tm occurs at S=(R2/X20)
//we get Tm=k/(2*X20)
a=R2/X20;
//r=Tm/T
r=(a^2+S^2)/(2*a*S);
Sm=(R2/X20);
printf("\nSlip at maximium torque,Sm=%f",Sm);
//corresponding speed
Nr2=Ns*(1-Sm);
printf("\nRotor speed at maximium torque=%drpm",Nr2)



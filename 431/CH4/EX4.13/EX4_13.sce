//Calculating the rotor loss and rotor speed
//Chapter 4
//Example 4.13
//page 309
clear;
clc; 
disp("Example 4.13")
f=50;.....................//frequency of induction motor in hertz
hp=20;                    //horse power
ph=3;                     //Three phase supply
P=4;                    //number of poles
losses=500;                //friction and vintage losses
printf("Output of the motor=%fW",(hp*735.5))
Pd=(hp*735.5)+losses;            //power developed in watt
printf("\nPower developed by the rotor=%dW",Pd);
s=0.04;                    //slip
rotorloss=(s*Pd)/(1-s);
printf("\nRotor I^2R-loss=%fW",rotorloss);
Ns=(120*f)/P;
printf("\nNs=%drpm",Ns);
Nr=Ns*(1-s);
printf("Nr=%drpm",Nr);


//Calculating full load rotor loss and rotor input and output torque
//Chapter 4
//Example 4.20
//page 311
clear;
clc; 
disp("Example 4.20")
hp=20;                        
P=4;                        //number of poles
f=50;
S=0.03;                      //slip
MSO=hp*735.5;                //motor shaft output
losses=0.02*MSO               //friction and windage loss in watts
Pd=MSO+losses;                    //power developed by the rotor in watts
RCL=(S*Pd)/(1-S);           //rotor I^2*R loss
printf("rotor copper loss=%fW",RCL);
Ri=Pd+RCL                              //rotor iron loss is neglected
printf("\nRotor input=%fW",Ri);
Ns=(120*f)/P;
Nr=Ns*(1-S)*(1/60);                  //rotor speed in rps
OT=MSO/(2*3.14*Nr);                    //outp[ut torque in Nm
printf("\noutput torque=%fNm",OT)
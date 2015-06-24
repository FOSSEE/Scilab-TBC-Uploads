//Calculate full load rotor loss and rotor input and output torque
//Chapter 4
//Example 4.30
//page 345
clear;
clc; 
disp("Example 4.30")
hp=20;                    //power in horsepower
f=50;                    //frequency in hertz
P=4;                    //number of poles
Ns=(120*f)/P;                //synchronous speed
printf("Synchronous speed,Ns=%drpm",Ns);
S=0.04;                            //slip
Nr=Ns*(1-S);
OP=hp*735.5;
printf("\nOutput power=%fW",OP);
OT=OP/(2*3.14*(Nr/60));
printf("\nOutput torque=%fNm",OT);
FL=0.02*OP;          //Friction and windage loss
PD=OP+FL;
printf("\nPower developed by the rotor=%fW",PD);
//from relation, (rotor I^2R-loss=S*Rotor input) we get following relation 
RL=(S*PD)/(1-S);        
printf("\nRotor I^2R-loss=%fW",RL);
RI=RL/S;
printf("\nRotor input=%dW",RI)


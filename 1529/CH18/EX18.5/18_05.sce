//Chapter 18, Problem 5
clc;
//Initializing the variables
C=10*10^-6;                 //capacitance in farad
R=25*10^3;                  //resistance in ohm
V=100;                      //voltage dc supply
t1=0.5;                     //time in seconds
t2=0.1;                     //time in seconds
vc1=45;                     //capacitor voltage 
Vm=V;

//Calculation
taw=C*R;                                //time constant
Im=V/R;                                 //maximum current
vc=Vm*(1-exp(-t1/taw));                 //voltage across the capacitor
i=Im*exp(-taw/taw);                     //current flowing after one time constant
vr=V*exp(-t2/taw);                      //voltage across the resistor
t3=-(log(1-(vc1/Vm))/log(exp(1)))*taw;  //time in seconds
vt=V/taw;                               //initial rate of voltage rise


printf("\n(a) Time constant = %f sec\n",taw);
printf("\n(b) Maximum current = %f mA\n",Im*10^3);
printf("\n(c) Voltage across the capacitor after 0.5 s = %f V\n",vc);
printf("\n(d) Current flowing after one time constant = %f mA\n",i*10^3);
printf("\n(e) Voltage across the resistor after 0.1 s = %f V\n",vr);
printf("\n(f) Time for the capacitor voltage to reach 45V = %f s\n",t3);
printf("\n(g) Initial rate of voltage rise = %f V\n",vt);


//To Determine the average KW input to the furnace
//Page 288
clc;
clear;
M=10*(10^3); //Mass of Steel Melted
t=2*3600; //Time Taken to Melt the steel
eff=50/100; //Overall Efficiency
I=9000; //Current Input
R=0.003; //Resistance
X=0.005; //Reactance
SH=0.12; //Specific Heat
LHF=8.89*(10^3); //Latent Heat of Fusion
Tm=1371; //Melting Point
Ti=20; //Room Temperature

Hm=M*LHF; //Heat Required for melting
Hr=M*SH*(Tm-Ti)*1000; //Heat Required to raise the temperature
Ht=Hm+Hr; //Total Amount of heat required

E=Ht*4.2/(3600); //Energy in Whr
P=E*3600/t; //Power

Pa=P/eff; //Actual Power Input to the Furnace

Vt=Pa/(3*I); //V Cos theta
//The Above voltage is the sum of arc drop and drop in resistance load

Va=Vt-(I*R); //Arc Drop
Vx=I*X; //Reactance Drop
Vs=sqrt((Vt^2)+(Vx^2)); //Supply Voltage
S=3*Vs*I/1000; //KVA input

printf('The Average kW input to the furnance is %g kW\n',Pa/1000)
printf(' The Arc Voltage is %g V\n',Va)
printf(' The kVA input is %g kVA\n',S)

//Accurate Answers, No rounding off.

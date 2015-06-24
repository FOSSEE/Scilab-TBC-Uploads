//example 1.6
clc; funcprot(0);
// Initialization of Variable
Vniu1=0;//V
Vinvu2=0;//V
Vref=2.56;
Rl=10000;//ohm
Rf=39200;//ohm
Ro=10;//resistance
Vdc1=5;
Vdc2=15;
Idc=.5;//current
//calculation
Iu1=(Vref/Rl)*.5;
disp(Iu1*1e6,"input resistor current in microA:")
Irf=Iu1;
disp(Irf*1e6,"feedback resistor current in microA:")
Vrf=Irf*Rf;
disp(Vrf,"feedback resistor voltage in V:")
Vout=Vrf+Vinvu2;
disp(Vout,"output resistor voltage in V:")
Eo=Vout-1.2;
disp(Eo,"output voltage in V:")
Iload=Vdc1/Ro;
disp(Iload,"load current in A:")
Pload=Vdc1^2/Ro;
disp(Pload,"load power in W:")
Plm317=(Vdc2-Vdc1)*Idc;
disp(Plm317,"powerdissipated in LM317 in W:")

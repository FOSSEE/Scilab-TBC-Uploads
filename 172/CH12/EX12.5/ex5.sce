//ques5
//air standard cycle for jet repulsion
clear
clc
//1-compressor inlet
//2-Compressor exit
//P-Pressure at given point
//T-Temperature at given point
P1=100;//kPa
P2=1000;//kPa
T1=288.2;//K
T2=556.8;//K
wc=269.5;//from ex 12.1 work done in compressor in kJ/kg
//2-Burner inlet
//3-Burner exit
P3=1000;//kPa
T3=1373.2;//K
//wc=wt
Cp=1.004;//specific enthalpy of heat at constant pressure in kJ/kg
k=1.4;
T4=T3-wc/Cp;
P4=P3*(T4/T3)^(1-1/k);
//from s4=s5 and h4=h5+v2/2 we get
T5=710.8//K, from second law
v=sqrt(2*Cp*1000*(T4-T5));//m/s
printf('Velocity of air leaving the nozel = %.0f m/s',v);
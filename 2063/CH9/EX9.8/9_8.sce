clc
clear
//Input data
V1=0.05;//displacement of a piston of a single cylinder single stage reciprocating compressor in m^3
P1=1;//pressure of air sucked in the compressor in bar
T1=300;//Initial Temperature of air in K
P2=7;//Pressure after the compression process in bar

//Calculations
V2=(P1*V1)/P2;//Volume after the compression in m^3
W1=P1*10^5*V1;//Work done by air during suction in Nm
W2=P1*10^5*V1*log(V2/V1);//Work done on sir during isothermal compression in Nm
H=-W2;//Heat transferred to the cylinder walls in Nm or J
W3=P1*10^5*V1;//Work done on air during delivery in Nm
Wn=W1+(-W2)-W3;//Net work done during the cycke in N m

//Output
printf('(a)Work done by air during suction is %3.0f Nm\n (b)Work done on air during Isothermal compression is %3.0f Nm\n (c)Heat transferred during this process is %3.0f J\n (d)Work done on air during delivery is %3.0f Nm\n (e)Net work done during the cycle is %3.0f Nm',W1,W2,H,W3,Wn)

clc
clear
//Input data
D=0.15;//Diameter of the bore of a single stage single acting reciprocating air compressor in m
L=0.225;//Stroke length in m
P1=1;//Pressure of air received in bar
T1=308;//Temperature of initial air in K
P2=6.5;//Delivery pressure in bar
n=1.3;//Polytropic index

//Calculations
Vs=(3.14*D^2*L)/4;//Stroke volume of the compressor in m^3
Vc=0.05*Vs;//Clearance volume in m^3
V1=Vs+Vc;//Initial volume of air in m^3
V4=Vc*(P2/P1)^(1/n);//The air in the clearance volume expands during suction stroke in m^3
V=V1-V4;//Effective swept volume in m^3
W=((n/(n-1))*P1*10^5*(V1-V4)*(((P2/P1)^((n-1)/n))-1));//Work done by the compressor per cycle in Nm

//Output
printf('Work done by the compressor per cycle is %3.1f Nm',W)

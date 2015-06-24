clc
clear
//Input data
V1=0.07;//Displacement of the piston of a single stage single cylinder air compressor in m^3
P1=1;//Initial pressure in bar
T1=308;//Initial temperature of air in K
P2=8.5;//Pressure after the compression process in bar
r=1.4;//Isentropic compression 

//Calculations
V2=V1*((P1/P2)^(1/1.4));//Final volume of the cylinder in m^3
W1=P1*10^5*V1;//Work done by air during suction in Nm (or) J
W2=(P1*10^5*V1*(1-(P2/P1)^((r-1)/r)))/(r-1);//Work done by air during compression in Nm or J
Wa1=P2*10^5*V2;//Work done on air during delivery in Nm or J
Wa2=((-W2)+Wa1-W1)/1000;//Net work done on air during the cycle in kJ

//Output
printf('(a)Work done by air during suction is %3.0f J\n (b)Work done on air during compression is %3.0f J\n (c)Work done on air during delivery is %3.0f J\n (d)Net work done on air during the cycle is %3.3f kJ',W1,W2,Wa1,Wa2)

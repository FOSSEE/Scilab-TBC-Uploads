clc
clear
//Input data
P1=1;//Pressure at the end of suction stroke in LP cylinder of a 3 stage single acting reciprocating compressor in bar
T1=293;//Temperature at the end of suction stroke in LP cylinder in K
V=9;//Free air delivered by the compressor in m^3
P4=65;//Pressure delivered by the compressor in bar
n=1.25;//Polytropic index

//Calculations
P2=P1*(P4/P1)^(1/3);//Intermediate pressure after stage 1 in bar
P3=P2*(P4/P1)^(1/3);//Intermediate pressure after stage 2 in bar
V3=1;//The volume of cylinder for the third stage in m^3
V2=V3*(P3/P2);//Volume of the cylinder for second stage in m^3
V1=(P2/P1)*V2;//Volume of the cylinder for first stage in m^3
W=(((3*n)/(n-1))*P1*10^5*V*(((P4/P1)^((n-1)/(3*n)))-1))/1000;//Work done by the compressor in kJ/min
Pi=W/60;//Indicated power in kW

//Output
printf('(a)L.P. and I.P.compressor delivery pressure is P2 = %3.3f bar P3 = %3.2f bar\n (b)Ratio of cylinder volumes is V1:V2:V3 = %3.2f:%3.3f:%3.0f\n (c)Total indicated power is %3.2f kW',P2,P3,V1,V2,V3,Pi)

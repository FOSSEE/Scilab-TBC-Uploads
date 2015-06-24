clc
clear
//Input data
s=20;//Spray penetration in cm
t1=15.7;//The spray penetration of 20 cm in ms
pi1=150;//The injection pressure in bar
pi2=450;//The injection pressure to be used in bar
p2=15;//The combustion chamber pressure in bar
d1=0.34;//The diameter of the orifice in mm
s1=20;//The penetration for an orifice in cm
d2=0.17;//If the diameter of the orifice in cm
t11=12;//The spray penetration in ms

//Calculations
t2=(t1*(pi1-p2)^(1/2))/(pi2-p2)^(1/2);//The time required for the spray to penetrate in ms
s2=d2*(s1/d1);//The penetration of the orifice in cm
t21=t11*(d2/d1);//The time required for the spray to penetrate in ms

//Output
printf('(a) The time required for the spray to penetrate = %3.2f ms \n (b) The spray penetration of the orifice = %3.0f cm \n The time required for the spray to penetrate = %3.0f ms ',t2,s2,t21)

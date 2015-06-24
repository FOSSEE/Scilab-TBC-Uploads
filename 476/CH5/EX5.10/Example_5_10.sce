//A Textbook of Chemical Engineering Thermodynamics
//Chapter 5
//Some Applications of the Laws of Thermodynamics
//Example 10


clear;
clc;


//Given:
T = 290; //operating temperature (K)
W = 1000; //work (J)
tof = 3516.67; //ton of refrigeration (W)

//To determine COP, heat rejected and lowest temperature

//(a)
Q2 = tof;
COP = Q2/W; //coeffecient of performance
mprintf('(a). COP is %f',COP);

//(b)
Q1 = Q2+W; //heat rejected
mprintf('\n\n (b). Heat rejected is %f kW',Q1/1000);

//(c)
//Let T2 be the lowest temperature
T2 = T1*(Q2/Q1);
mprintf('\n\n (c). Lowest possible temperature in refrigerator is %f K',T2);

//end
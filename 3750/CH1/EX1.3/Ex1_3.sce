//Strength Of Material By G.H.Ryder
//Chapter 1
//Example 3
// To Calulate Stress
g=9.8;   //Acceleration due to Gravity, Unit in m/sec^2
m=100;  //Falling Mass , Unit in Kg
W=m*g;   //Falling weight , Unit in N
D=2;  // Diameter of steel bar, Unit in cm
A=%pi*(D^2)*100/4;   //Cross section Area of steel bar, Unit in mm^2
h=4;  //height from which W is falling, Unit in cm
l=3;   //lenght of steel bar, Unit in cm
E=205,000;  //Young's Modulus of steel, Unit in m
P=W*(1+(1+2*h*10*E*A/(W*l*1000))^(1/2));
//Formula for Equivalent load from Energy Equation, Unit in N
Stress=P/4;  //Stress set up in bar,unit in N/mm^2
printf("The Stress set up in steel bar is %f N.mm^2",Stress)

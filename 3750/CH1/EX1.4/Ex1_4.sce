//Strength Of Material By G.H.Ryder
//Chapter 1
//Example 4
// To Calulate Stress & Extension
g=9.8;   //Acceleration due to Gravity, Unit in m/sec^2
m=100;  //Falling Mass , Unit in Kg
W=m*g;   //Falling weight , Unit in N
D1=1; // diameter of first part of bar, Unit in cm
l1=1.5;  //Lenght fo first part of bar, Unit in m
D2=2;  // diameter of second part of bar, Unit in cm
l2=1.5;   //Lenght fo second part of bar, Unit in m
A1=%pi*(D1^2)/4*100;  //Area of first part of bar, Unit in mm^2
A2=%pi*(D2^2)/4*100;  //A;rea of Second part of bar, Unit in mm^2
E=205,000;  //Young's Modulus of the bar, Unit in N/mm^2
h=4;  //height from which weight is falling, Unit in cm
P=W*(1+(1+2*h*10*E/((l1*1000/A1)+(l2*1000/A2)))^(1/2)); //Formula for Equivalent load, from energy equation, Unit in N
x=P*l1/A1*E+P*l2/(A2*E);  //Extension in rod, unit in mm
//The maximum stress will occur in smallest section. so, 
maxstress=P/A1;
printf("maximum stress=%f N/mm^2",maxstress)
printf("Extension =%f mm",x)

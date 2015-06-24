clear;
clc;
disp(' Example 14.2');

// aim : To determine 
// (a) the intermediate pressure
// (b) the total volume of each cylinder
// (c) the cycle power

// given values
v1 = .2;// air intake, [m^3/s]
P1 = .1;// intake pressure, [MN/m^2]
T1 = 273+16;// intake temperature, [K]
P3 = .7;// final pressure, [MN/m^2]
n = 1.25;// compression index
N = 10;// speed, [rev/s]

// solution
// (a)
P2 = sqrt(P1*P3);// intermediate pressure, [MN/m^2]
mprintf('\n (a) The intermediate pressure is  =  %f  MN/m^2\n',P2);

// (b)
V1  = v1/N;// total volume,[m^3]
// since intercooling is perfect so 2 lie on the isothermal through1, P1*V1=P2*V2
V2 = P1*V1/P2;// volume, [m^3]
mprintf('\n (b) The total volume of the HP cylinder is  =  %f  litres\n',V2*10^3);

 // (c)
 CP = 2*n/(n-1)*P1*v1*((P2/P1)^((n-1)/n)-1);// cycle power, [MW]
  mprintf('\n (c) The cycle power is  =  %f  MW\n',CP*10^3);
 
 // there is calculation mistake in the book so answer is not matching
 
 //  End

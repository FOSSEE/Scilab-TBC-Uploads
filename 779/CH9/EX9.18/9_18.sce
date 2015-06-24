m = 50 ; // in kg/h
Th = 23+273; // Home temperature
// State 1
T1 = 150+273;
h1 = 2746.4;
s1 = 6.8387;
// State 2
h2 = 419.0;
s2 = 1.3071;
T0 = 318;
//
b1 = h1-(T0*s1);
b2 = h2-(T0*s2);
Q_max = m*(b1-b2)/(T0/Th-1);
disp("kW",Q_max/3600,"The maximum cooling rate is")
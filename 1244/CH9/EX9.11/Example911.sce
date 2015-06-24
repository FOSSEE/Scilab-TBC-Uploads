

// Display mode
mode(0);

// Display warning for floating point exception
ieee(1);

clc;
disp("Principles of Heat Transfer, 7th Ed. Frank Kreith et. al Chapter - 9 Example # 9.11 ")

//Absolute boiling temperature of liquid oxygen in R
T1 = 460-297;
//Absolute temperature of sphere in R
T2 = 460+30;
//Diameter of inner sphere in ft
D1 = 1;
//Area of inner sphere in ft2
A1 = (%pi*D1)*D1;
//Diameter of outer sphere in ft
D2 = 1.5;
//Area of outer sphere in ft2
A2 = (%pi*D2)*D2;
//Stefans constant
sigma = 0.1714;
//Emissivity of Aluminium
epsilon1 = 0.03;//Sphere1
epsilon2 = 0.03;//Sphere2

//Using Eq. 9.74
disp("Rate of heat flow by radiation to the oxygen in Btu/h is")
//Rate of heat flow by radiation to the oxygen in Btu/h
q = ((A1*sigma)*((T1/100)^4-(T2/100)^4))/(1/epsilon1+(A1/A2)*((1-epsilon2)/epsilon2))

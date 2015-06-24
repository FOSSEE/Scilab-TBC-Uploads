clear ;
clc;
// Example 9.9
printf('Example 9.9\n\n');
printf('Page No. 277\n\n');

//given
A = 15;// glazing area in m^2
l = 10;// Length of office in m
h = 6;// height of office in m
w = 3.5;// width of office in m
Y_w = 4;// Admittance of wall in W/m^2-K
Y_f = 3;// Admittance of floor in W/m^2-K
Y_c = 3;// Admittance of ceiling in W/m^2-K
N = 1.5;//Ventilation rate (air changes per hour)
V = l*h*w;// Volume in m^3
U_G = 5.6;// Transmittance in W/m^2-K

//From table 9.18 and table 9.16
To = 16.5;// External temperature of June in degree celcius
T_O = 7.5;// Swing temperature in degre celcius
I = 155; //Vertical S in W-m^2
Is = 385;//Vertical S in W-m^2
S = 0.77;// Solar gain factor
Sa = 0.54;// Solar gain factor

//As  For the mean internal temperature -Ti = To + ((A*I*S)/((0.33*N*V) + (A*U_G))) 
Ti = To + ((A*I*S)/((0.33*N*V) + (A*U_G)));// in degree celcius
printf('the mean internal temperature is %.1f deg C \n',Ti)

A_G = (A*Is*Sa) + ((A*U_G) + (0.33*N*V))*T_O;// Swing in gain in W
Net_A = 2*((w*h) + (l*w)) - A;// Net wall area in m^2
A_f = l*h;// floor area in m^2
A_c = l*h;//ceiling area in m^2
A_Y_w = Net_A * Y_w;// Wall AY in W/K
A_Y_f = A_f * Y_f;// Floor AY in W/K 
A_Y_c = A_c * Y_c;// ceiling AY in W/K 
A_Y_wi = 84;// Window AY in W/K
Net_AY = A_Y_w + A_Y_f + A_Y_c + A_Y_wi// in W/K
Ti_s = ((A_G)/((0.33*N*V) + (Net_AY)))// Internal Temperature swing in deg C
T_p = Ti + Ti_s;// in deg C
printf('Peak internal temperature is %.1f deg C',T_p) // Deviation in the answer is due to some calculation approximation in the book


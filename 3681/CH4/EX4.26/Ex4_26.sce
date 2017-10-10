// Calculating the temperature rise of tank
clc;
disp('Example 4.26, Page No. = 4.52')
// Given Data
MVA = 15;// MVA rating of transformer
Q_iron = 80;// Iron losses (in kW)
Q_copper = 120;// Copper losses (in kW)
T_water = 15;// Temperature rise of water (in degree celsius)
Vw = 3;// Amount of water (in litre per second)
Dimensions = 3.5*3.0*1.4;// Tank dimensions (in meter)
l = 10;// Specific loss dissipation from tank walls (in Watt per degree celsius per meter square)
// Calculation of the temperature rise of tank
Q_total = Q_iron+Q_copper;// Total losses (in kW)
Q = Vw*T_water/0.24;// Heat taken away by water (in kW)
Q_walls = Q_total-Q;// Loss dissipated by walls (in kW)
S = 2*3.5*(3+1.14);// Area of tank walls by neglecting top and bottom surfaces
T = Q_walls*10^(3)/(S*l);// Temperature rise of tank (in degree celsius)
disp(T,'Temperature rise of tank (degree celsius)=');
//in book answer is 40.6 (degree celsius).  The provided in the textbook is wrong

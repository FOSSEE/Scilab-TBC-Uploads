clear;
clc;
printf('FUNDAMENTALS OF HEAT AND MASS TRANSFER \n Incropera / Dewitt / Bergman / Lavine \n EXAMPLE 14.2   Page 898 \n')// Example 14.2

// Evaporation rate through a single pore

T = 298          ;//[K] Temperature
D = 10*10^-6     ;//[m]
L = 100*10^-6;          //[m]
H = .5            ;// Moist Air Humidity
p = 1.01325      ;//[bar]
//Table A.6 Saturated Water vapor Properties at 298 K
psat = .03165;            //[bar] saturated Pressure
//Table A.8 Water vapor-air Properties at 298 K
Dab = .26*10^-4;        //[m^2/s] diffusion coefficient

C = p/(8.314*10^-2*298)        ;//Total Concentration
//From section 6.7.2, the mole fraction at x = 0 is
xa0 = psat/p;
//the mole fraction at x = L is
xaL = H*psat/p;

//Evaporation rate per pore Using Equation 14.41 with advection
N = (%pi*D^2)*C*Dab/(4*L)*2.303*log10((1-xaL)/(1-xa0))    ;//[kmol/s]

//Neglecting effects of molar averaged velocity Equation 14.32
//Species transfer rate per pore
Nh = (%pi*D^2)*C*Dab/(4*L)*(xa0-xaL)        ;//[kmol/s]

printf('\n Evaporation rate per pore Without advection effects %.2e kmol/s and With Advection effects %.2e kmol/s',Nh,N)

clf();
x = linspace(300,800,100);
y1 = N*x^1.5/298^1.5*10^15;
y2 = Nh*x^1.5/298^1.5*10^15;
plot(x,y1,x,y2);
xtitle("Evaporation Temp vs Temp", "T (K)", "Na *10^15(kmol/s)");
legend ("Without Advection", "With Advection");
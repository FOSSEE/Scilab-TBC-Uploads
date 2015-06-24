clc();
clear;
//Given:
//(a) Ball
h = 6.625*10^-34; //planck's constant in Js
m1 = 45; //mass in g
v1 = 40; //Speed in m/s
prec1 = 1.5/100 ;//precision
// m1 = 45*10^-3 kg , 1 g = 1.0*10^-3 kg
p1 =m1*10^-3*v1 ; // momentum in kg m/s
//(deltap/p)*100 = 1.5
deltap1 = prec1*p1 ;
deltax1 = h/deltap1; // uncertainty in position in m
printf("Uncertainty in  position for a ball : %.2f x 10^-32 m \n",deltax1*10^32);
//(b) Electron
m2 = 9.1*10^-31; //electron mass in kg
v2 = 2*10^6 ; // Speed in m/s
prec2 = 1.5/100 ; // precision
p2 = m2*v2; // momentum in kg m/s
//(deltap/p)*100 = 1.5
deltap2 = prec2*p2 ;
deltax2 = h/deltap2; // uncertainty in position in m
// 1 A  = 1.0*10^-10 m
printf("Uncertainty in  position for an electron : %.0f A \n",deltax2/(1.0*10^-10));

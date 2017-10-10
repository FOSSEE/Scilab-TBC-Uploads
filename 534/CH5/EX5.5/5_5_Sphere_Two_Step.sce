clear;
clc;
printf('FUNDAMENTALS OF HEAT AND MASS TRANSFER \n Incropera / Dewitt / Bergman / Lavine \n EXAMPLE 5.5   Page 280 \n'); //Example 5.5
// Two step cooling process of Sphere

//Operating Conditions

ha = 10;          //[W/m^2.K] Heat Convection coefficientat air
hw = 6000;          //[W/m^2.K] Heat Convection coefficientat water
k = 20;         //[W/m.K] Thermal Conductivity 
rho = 3000;        //[kg/m^3] Density
c = 1000;            //[J/kg.K]  Specific Heat
alpha = 6.66*10^-6;            //[m^2/s]
Tiw = 335+273;        //[K] Initial Temp
Tia = 400+273;        //[K] Initial Temp
Tsurr = 20+273;     //[K] Temp of surrounding
T = 50+273;        //[K] Temp of center
ro = .005;        //[m] radius of sphere

//Using eqn 5.10 and
Lc = ro/3;
Bi = ha*Lc/k;
ta = rho*ro*c*2.30*(log10((Tia-Tsurr)/(Tiw-Tsurr)))/(3*ha);

//From Table 5.1 at this Bi
C1 = 1.367;
eta = 1.8;
Fo = -1*2.30*log10((T-Tsurr)/((Tiw-Tsurr)*C1))/eta^2;

tw = Fo*ro^2/alpha;

printf("\n (a) Time required to accomplish desired cooling in air ta = %.1f s\n\n (b) Time required to accomplish desired cooling in water bath tw = %.2f s",ta,tw);

//END
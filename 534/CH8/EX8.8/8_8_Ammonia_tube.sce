clear;
clc;
printf('FUNDAMENTALS OF HEAT AND MASS TRANSFER \n Incropera / Dewitt / Bergman / Lavine \n EXAMPLE 8.8   Page 529 \n'); //Example 8.8
// Average mass trasnfer convection coefficient for the tube

//Operating Conditions
m = .0003;            //[kg/s] mass flow rate of water
T = 25+273;    //[K] Temperature of surrounding and tube
D = .01;          //[m] Diameter
L = 1;            //[m] length

//Table A.4 Air Properties T = 298 K
uv = 15.7*10^-6;           //[m^2/s] Kinematic Viscosity
u = 18.36*10^-6;     //[N.s/m^2] Viscosity
//Table A.8 Ammonia-Air Properties T = 298 K
Dab = .28*10^-4;        //[m^2/s] Diffusion coeff
Sc = .56;

Re = m*4/(%pi*D*u);
printf("\n As Reynolds Number is %i. The flow is Laminar.",Re);

//Using Equation 8.57
Sh = 1.86*(Re*Sc*D/L)^.3334;
h = Sh*Dab/D;
printf("\n Average mass trasnfer convection coefficient for the tube %.3f m/s",h);

//END
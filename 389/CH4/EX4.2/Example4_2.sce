clear;
clc;

// Illustration 4.2
// Page: 92

printf('Illustration 4.2 - Page: 92\n\n');
printf('Illustration 4.2 (a)\n\n');

// solution (a)

// Given
a = 3/2;// [cm]
thetha = 68*3600;// [s]
// Ca can e calculated in terms of g/100 cubic cm
Cao = 5;// [g/100 cubic cm]
Ca_thetha = 3;// [g/100 cubic cm]
Ca_Inf = 0;// [g/100 cubic cm]
//**********//

E = (Ca_thetha-Ca_Inf)/(Cao-Ca_Inf);
// E = 0.6;
// From Fig. 4.2 (Pg 91): For diffusion from only one exposed surface D*thetha/(4*a^2) = 0.128
D = 0.128*4*(a^2)/thetha;// [square cm/s]
D = D*10^(-4);// [square m/s]
printf('Diffusivity of urea in gel from only one exposed durface: %e square m/s\n\n',D);

printf('Illustration 4.2 (b)\n\n');

// Solution (b)

//****Data****//
// Ca can e calculated in terms of g/100 cubic cm
Cao = 5;// [g/100 cubic cm]
Ca_thetha = 1;// [g/100 cubic cm]
Ca_Inf = 0;// [g/100 cubic cm]
//*********//

E = (Ca_thetha-Ca_Inf)/(Cao-Ca_Inf);
// E = 0.2;
// From Fig. 4.2 (Pg 91): For diffusion from only one exposed surface D*thetha/(4*a^2) = 0.568
D = 4.70*10^(-6);// From Illusration 4.2(a) [square cm/s]
thetha = 0.568*4*a^2/D;// [s]
thetha = thetha/3600;// [h]
printf('The time taken for the avg. conc. to fall to 1g/100 cubic cm is:%f h\n\n',thetha);

printf('Illustration 4.2 (c)\n\n');

// solution (c)

//****Data*****//
Cao = 5;// [g/100 cubic cm]
Ca_thetha = 1;// [g/100 cubic cm]
Ca_Inf = 0;// [g/100 cubic cm]
//*******//

E = (Ca_thetha-Ca_Inf)/(Cao-Ca_Inf);
// E = 0.2;
// From Fig. 4.2: For diffusion from two opposite exposed surface D*thetha/(a^2) = 0.568
D = 4.70*10^(-6);// From Illusration 4.2(a) [square cm/s]
thetha = 0.568*(a^2)/D;// [s]
thetha = thetha/3600;// [h]
printf('The time taken for the avg. conc. to fall to 1g/100 cubic cm is:%f h',thetha);
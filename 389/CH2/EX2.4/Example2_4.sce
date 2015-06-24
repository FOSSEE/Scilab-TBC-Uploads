clear;
clc;

// Illustration 2.4
// Page: 34

printf('Illustration 2.4 - Page: 34\n\n');

// solution

//***Data****//
// a = acetic acid b = H2O
z = 0.001;// [m]
Dab = 0.95*10^(-9);//[square m/s]
//************//

Ma = 60.03;// [kg/kmol]
Mb = 18.02;// [kg/kmol]
//At 17 C & 9% solution
density1 = 1012; //[kg/cubic m]
Xa1 = (0.09/Ma)/((0.09/Ma)+(0.91/Mb));
Xb1 = 1-Xa1;
M1 = 1/((0.09/Ma)+(0.91/Mb));// [kg/kmol]
//At 17 C & 3% solution
density2 = 1003.2; //[kg/cubic m]
Xa2 = (0.03/Ma)/((0.03/Ma)+(0.97/Mb));
Xb2 = 1-Xa2;
M2 = 1/((0.03/Ma)+(0.97/Mb));// [kg/kmol]
avg_density_by_M = ((density1/M1)+(density2/M2))/2;//[kmol/cubic m]
// From Eqn. 2.42
Xbm = (Xb2-Xb1)/log(Xb2/Xb1);
// From Eqn. 2.41
Na = Dab*(avg_density_by_M)*(Xa1-Xa2)/(Xbm*z); //[square m/s]
printf('The rate of diffusion is %e square m/s',Na);
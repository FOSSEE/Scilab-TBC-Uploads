clear;
clc;

// Illustration 3.10
// Page: 199

printf('Illustration 3.10 -  Page: 199\n\n');

// solution
//*****Data*****//
// From Example 3.7
X2a = 0.05; X0 = X2a; // [kmole benzene/kmole oil]
Y2a = 0.012; Y1 = Y2a; // [kmole benzene/kmole dry gas]
X1a = 0.480; Xn = X1a; // [kmole benzene/kmole oil]
Y1a = 0.080; Yn1 = Y1a; // [kmole benzene/kmole dry gas]
// Ideal stages for absorber section

m = 0.097; // [mole of oil/mole of dry gas]
Lsa = 0.006; // [kmole/s]
Vsa = 0.038; // [kmole/s]
A = Lsa/(m*Vsa); // [Absorption factor]

// From equation 3.54 by Kremser equation
Nk = log((((Yn1-m*X0)*(1-1/A))/(Y1-m*X0))+1/A)/(log(A));
printf("Number of ideal stages from Kremser equation in the absorber is %f\n\n",Nk);

// Ideal stages from graph 
// Stair case construction is being made between equilibrium curve and operating line from piont X2a,Y2a to X1a,Y1a
// A more precise estimate of stages
// From figure 3.25 or from graph made for absorber in Example 3.7
Xa = 0.283;
Xb = 0.480;
Xc = 0.530;
Na = 3+(Xb -Xa)/(Xc-Xa);
printf("The number of ideal stages from graph in the absorber is %f\n\n",Na);

// Ideal satges for stripping section
X2s = 0.480; X0 = X2s; // [kmol benzene/kmol oil]
Y2s = 0.784; Y1 = Y2s; // [kmol benzene/kmol steam]
X1s = 0.05; Xn = X1s; // [kmol benzene/kmol oil]
Y1s = 0; Yn1 = Y1s; // [kmol benzene/kmol steam]

// Similarly here also stair case construction is being made between equilibrium curve and operating line from piont X0,Y1 to Xn,Yn1
// A more precise estimate of stages
// From figure 3.26 or from graph made for stripping section in Example 3.7
Ns = 5+(0.070-0.050)/(0.070-0.028);

printf("The number of ideal stages from graph in the stripping section is %f\n\n",Ns);
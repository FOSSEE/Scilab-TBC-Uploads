//Book - Power system: Analysisi & Design 5th Edition
//Authors - J. Duncan Glover, Mulukutla S. Sarma, and Thomas J.Overbye
//Chapter-3 ;Example 3.13
//Scilab Version - 6.0.0; OS - Windows

clc;
clear;

XL1=0.25                        //Positive sequence series reactance at parallel line 1 in per unit
XL2=0.20                        //Positive sequence series reactance at parallel line 2 in per unit
Cm=0.9524

Y11L1m=(1/(%i*.25))             //The voltage magnitude regulating transformer admittance Y11L1m
Y22L1m=(Cm^2)*Y11L1m            //The voltage magnitude regulating transformer admittance Y22L1m
Y12L1m=(-Cm)*Y11L1m             //The voltage magnitude regulating transformer admittance Y12L1m
Y21L1m=(-Cm)*Y11L1m             //The voltage magnitude regulating transformer admittance Y21L1m
Y11L2=(1/(%i*.20))
Y22L2=(1/(%i*.20))
Y12L2=-Y11L2
Y21L2=-Y11L2
Y11m=Y11L1m+Y11L2               //parallel admittance Y11m
Y22m=Y22L1m+Y22L2               //parallel admittance Y11m
Y12m=Y12L1m+Y12L2               //parallel admittance Y11m
Y21m=Y12L1m+Y12L2               //parallel admittance Y11m
Y11L1a=(1/(%i*.25))             //The phase angle regulating transformer admittance Y11L1a
Ca=1.0*(exp(%i*(-3)*(%pi/180)))
Y22L1a=((abs(Ca))^2)*(-%i*4.0)  //The phase angle regulating transformer admittance Y22L1a
Y12L1a= (-Ca)*(-%i*4.0)         //The phase angle regulating transformer admittance Y12L1a
Y21L1a= (-conj(Ca))*(-%i*4.0)   //The phase angle regulating transformer admittance Y21L1a
Y11a=Y11L1a+Y11L2               //parallel admittance Y11a
Y22a=Y22L1a+Y22L2               //parallel admittance Y22a
Y12a=Y12L1a+Y12L2               //parallel admittance Y12a
Y21a=Y21L1a+Y21L2               //parallel admittance Y21a

disp('CASE-a:')
disp('The admittance parameters of the regulating transformer in series with line 1 are:')
printf('Y11L1m = %.4fi per unit          Y22L1m = %.4fi per unit\n',imag(Y11L1m),imag(Y22L1m));
printf('Y12L1m = %.4fi per unit\         Y21L1m = %.4fi per unit\n',imag(Y12L1m),imag(Y21L1m));

disp('The admittance parameters of the regulating transformer in series with line 2 are:')
printf('Y11L2 = %.4fi per unit               Y22L2 = %.4fi per unit\n',imag(Y11L2),imag(Y22L2));
printf('Y12L2 = %.4fi per unit           Y21L2 = %.4fi per unit\n',imag(Y12L2),imag(Y21L2));

disp('The admittance parameters of combined admittances for line 1& 2 in parallel are:')
printf('Y11m = %.4fi per unit           Y22m = %.4fi per unit\n',imag(Y11m),imag(Y22m));
printf('Y12m = %.4fi per unit           Y21m = %.4fi per unit\n',imag(Y12m),imag(Y21m));

disp('CASE-b:')
disp('The admittance parameters of the regulating transformer in series with line 1 are:')
printf('Y11L1a = %.4fi per unit              Y22L1a = %.4fi per unit\n',imag(Y11L1a),imag(Y22L1a));
printf('Y12L1a = %.4f+%.4fi per unit         ',real(Y12L1a),imag(Y12L1a));
printf('Y21L1a = %.4f+%.4fi per unit\n',real(Y21L1a),imag(Y21L1a));

disp('The admittance parameters of combined admittances for line 1& 2 in parallel are:')
printf('Y11a = %.4fi per unit         Y22a = %.4fi per unit\n',imag(Y11a),imag(Y22a));
printf('Y12a = %.4f+%.4fi per unit         ',real(Y12a),imag(Y12a));
printf('Y21a = %.4f+%.4fi per unit\n',real(Y21a),imag(Y21a));




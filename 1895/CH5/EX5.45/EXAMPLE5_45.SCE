//ANALOG AND DIGITAL COMMUNICATION
//BY Dr.SANJAY SHARMA
//CHAPTER 5
//ANGLE MODULATION
clear all;
clc;
printf("EXAMPLE 5.45(PAGENO 263)");

//given
//x_c(t)  = 10*cos(w_c*t + 3*sin(w_m*t))
//comparing with std eqn of PM signal x_PM(t) = A*cos(w_c*t + k_p*m(t))
//m(t) = a_m*sin(w_m*t)
//beeta = k_p*a_m
beeta = 3;
f_m1 = 1*10^3//modulating frequency for first case
f_m2 = 2*10^3//modulating frequency for second case
f_m3 = 500//modulating frequency for third  case

//calculations
f_B1 = 2*(beeta + 1)*f_m1//bandwidth for first case
f_B2 = 2*(beeta + 1)*f_m2//bandwidth for first case
f_B3 = 2*(beeta + 1)*f_m3//bandwidth for first case

//results
printf("\n\ni.Bandwidth for first case = %.2f Hz",f_B1);
printf("\n\nii.Bandwidth for second case = %.2f Hz",f_B2);
printf("\n\nii.Bandwidth for third case = %.2f Hz",f_B3);

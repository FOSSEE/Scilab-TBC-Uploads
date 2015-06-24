//ANALOG AND DIGITAL COMMUNICATION
//BY Dr.SANJAY SHARMA
//CHAPTER 5
//ANGLE MODULATION
clear all;
clc;
printf("EXAMPLE 5.45(PAGENO 264)");

//given
//x_cFM(t)  = 10*cos(w_c*t + 3*sin(w_m*t))
//by omparing with standard equation i.e A*cos(w_c*t + beta*sin(w_m*t))
//we get
beta = 3

//calculations
//first case
f_m1 = 1*10^3//modulating frequency for first case
f_B1 = 2*(beta +1)*f_m1//bandwidth for first case
//second case
beta2 = 3/2//beta for second case
f_m2 = 2*10^3//modulating frequency for second case
f_B2 = 2*(beta2 +1)*f_m2//bandwidth for second case
//third case
beta3 = 6//beta for third case
f_m3 = .5*10^3//modulating frequency for third case
f_B3 = 2*(beta3 +1)*f_m3//bandwidth for third case

//results
printf("\n\ni.Bandwidth for first case = %.2f Hz",f_B1);
printf("\n\nii.Bandwidth for second case = %.2f Hz",f_B2);
printf("\n\nii.Bandwidth for third case = %.2f Hz",f_B3);

//ANALOG AND DIGITAL COMMUNICATION
//BY Dr.SANJAY SHARMA
//CHAPTER 7
//SAMPLING THEORY AND PULSE MODULATION
clear all;
clc;
printf("EXAMPLE 7.13(PAGENO 326)");

//given
//x(t) = 8*cos(200*%pi*t)
f= 100//highest frequency component of continuous time signal in hertz
f_s2 = 400//sampling frequency in hertz for second condition
f_s3 = 400//sampling frequency in hertz for third condition
f_s4 = 150//sampling frequency in hertz for fourth condition since 0 < f_s4 < f_s2/2 

//calcultions
NR = 2*f//Nyquist rate
F_1 = f/NR;
F_2 = f/f_s2;
F_3 = f/f_s3;
F_4 = f/f_s4;
f_4 = f_s4*F_4;

//results
printf("\n\nThe discrete time signal x(n) for the first condition is x(n) = 8*cos(2*3.14*%.2f*n)",F_1);
printf("\n\nthe discrete time signal x(n) for the second condition is x(n) = 8*cos(2*3.14*%.2f*n)",F_2);
printf("\n\nthe discrete time signal x(n) for the third condition is x(n) = 8*cos(2*3.14*%.2f*n)",F_3);
printf("\n\nThe discrete time signal x(n) for the fourth condition is x(n) = 8*cos(2*3.14*%.2f*t)",f_4);

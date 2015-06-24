//ANALOG AND DIGITAL COMMUNICATION
//BY Dr.SANJAY SHARMA
//CHAPTER 7
//SAMPLING THEORY AND PULSE MODULATION
clear all;
clc;
printf("EXAMPLE 7.12(PAGENO 325)");

//given
//x(t) = (1/()2*%pi))*cos(4000*%pi*t)*cos(1000*%pi*t)
//exapnding
disp("x(t) = (1/(2*%pi)*cos(4000*%pi*t)*cos(1000*%pi*t)");
disp("x(t) = (1/(4*%pi)*2*cos(4000*%pi*t)*cos(1000*%pi*t)");
disp("x(t) = (1/(4*%pi))*[cos(4000*%pi*t + 1000*pi*t)*cos(4000*%pi*t - 1000*%pi*t)]")
disp("x(t) = (1/(4*%pi))*[cos(5000*%pi*t + cos(3000*%pi*t))]")
//by comparing above equation with x(t) = (1/(4*%pi))*[cos(w_1*t) + cos(w_2*t)] 
w_1 = 5000*%pi
w_2 = 3000*%pi

//calculations
f_1 = w_1/(2*%pi);
f_2 = w_2 /(2*%pi);
f_m = f_1
f_s = 2*f_m//Nyquist rate
T_s = 1/f_s//Nyquist interval

//results
printf("\n\nNyquist rate = %.2f Hz",f_s);
printf("\n\nNyquist interval = %.5f seconds",T_s);

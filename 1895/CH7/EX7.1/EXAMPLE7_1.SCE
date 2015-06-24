//ANALOG AND DIGITAL COMMUNICATION
//BY Dr.SANJAY SHARMA
//CHAPTER 7
//SAMPLING THEORY AND PULSE MODULATION
clear all;
clc;
printf("EXAMPLE 7.1(PAGENO 324)");

//given
//analog signal x(t) = 3*cos(50*%pi*t) + 10*sin(300*%pi*t) - cos(100*%pi*t)
//comparing signal with x(t) = 3*cos(w_1*t) + 10*sin(w_2*t) - cos(w_3*t)
//therefore
w_1 = 50*%pi;//first frequency in rad/sec
w_2 = 300*%pi;//second frequency in rad/sec
w_3 = 100*%pi;//third frequency in rad/sec

//calculations
f_1 = w_1/(2*%pi);//first frequency in Hz
f_2 = w_2/(2*%pi);//second frequency in Hz
f_3 = w_3/(2*%pi);//third frequency in Hz
f_m = f_2//maximum frequency 
f_s = 2*f_m//nyquist rate for a signal

//results
printf("\n\nNyquist rate  = %.2f Hz",f_s);

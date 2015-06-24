//ANALOG AND DIGITAL COMMUNICATION
//BY Dr.SANJAY SHARMA
//CHAPTER 7
//SAMPLING THEORY AND PULSE MODULATION
clear all;
clc;
printf("EXAMPLE 7.4(PAGENO 327)");

//given
//x(t) = 6*cos(50*%pi*t)  + 20*sin(300*%pi*t) - 10*cos(100*%pi*t)
//by comparing with standard eqn x(t) = A_1*cos(w_1*t)  + A_2*sin(w_2*t) + A_3*cos(w_3*t) we get 
w_1 = 50*%pi//frequency in rad/sec
w_2 =300*%pi//frequency in rad/sec
w_3 = 100*%pi//frequency in rad/sec

//calculations
f_1 = w_1/(2*%pi)//frequency in hertz
f_2 = w_2/(2*%pi)//frequency in hertz
f_3 = w_3/(2*%pi)//frequency in hertz
if (f_1 > f_2  & f_1> f_3) then
     f_max = f_1
elseif (f_2 > f_1 & f_2> f_3) then
    f_max = f_2
else (f_3 > f_1 & f_3> f_2) then
    f_max = f_3
    end
f_s = 2*f_max;//nyquist rate

//results
printf("\n\nNyquist rate for a continuous signal = %.2f Hz",f_s);

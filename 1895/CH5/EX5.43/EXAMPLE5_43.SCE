//ANALOG AND DIGITAL COMMUNICATION
//BY Dr.SANJAY SHARMA
//CHAPTER 5
//ANGLE MODULATION
clear all;
clc;
printf("EXAMPLE 5.43(PAGENO 263)");

//given
//x_c(t) = 10*cos(2*%pi*10^8*t + 200*cos (2*%pi*10^3*t))
//instantaneous frequecy w_i = 2*%pi*10^8 - 4*%pi*10^6*sin(2*%pi*10^3)
delta_w = 4*%pi*10^5//angular frequency deviation
w_m = 2*%pi*10^3//angulat modulating frequency

//calculations 
beeta = delta_w/w_m;
W_B1 = 2*(beeta + 1)*w_m;//angular bandwidth
//since beeta >>1,therefore
W_B1 = 2*delta_w//angular bandwidth
//W_B==W_B1
f_B = W_B1/(2*%pi)//bandwidth in Hz

//result
printf("\n\nBandwidth = %.2f Hz",f_B);

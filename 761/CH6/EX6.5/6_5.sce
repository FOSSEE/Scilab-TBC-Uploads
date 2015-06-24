clc;
//page no 238
//prob no. 6.5
//Refer the fig 6.5
//A receiver tuned to station at 590kHz 
f_if=455*10^3;//Intermediate freq
f_sig=590*10^3;
//a)Determintion of image freq
f_image=f_sig+2*f_if;
disp('kHz',f_image/1000,'a)The image freq is');
Q=40;//Q_factor
//b)Determination of image rejection 
x=(f_image/f_sig)-(f_sig/f_image);
Asig_Aimage=sqrt(1+(Q*x)^2);//image rejection
//converting in dB
IR_dB=20*log10(Asig_Aimage);
disp('dB',IR_dB,'b)The image rejection is');
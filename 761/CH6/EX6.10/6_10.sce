clc;
//page no 261
//prob no. 6.10
//Receiver refering in fig.6.28
f_sig=25*10^6;//signal i/p freq
f_lo1=29.5*10^6;//Ist local oscillator freq
//determination of Ist IF which uses high side injection
f_IF1=f_lo1-f_sig;//high side injection
disp('MHz',f_IF1/10^6,'The first IF is');
//Determination of IInd IF which uses low side injection
f_lo2=4*10^6;//IInd local oscillator freq
f_IF2=f_IF1-f_lo2;
disp('kHz',f_IF2/10^3,'The second IF is');
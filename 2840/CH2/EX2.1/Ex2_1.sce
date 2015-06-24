clc;
//delta_L=L2-L1
//I proportional to square of amplitude so when amplitude is doubled intensity will becomes 4 times 
//L1=10*l0g10(I1/I0)
//L2=10*log10(I2/I0)
//delta_L=L2-L1
//delta_L=10*log(I1/I0)-10*log(I2/I0)=10*log(I2/I1)
I21=4;//I2/I1=4 because intensity=amp^2
delta_L=10*log10(I21);//increase in intensity level
disp(+'dB',delta_L,'increase in intensity level =')

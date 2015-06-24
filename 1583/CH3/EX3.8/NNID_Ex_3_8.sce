clc
//Chapter 3:Network noise and intermodulation distortion
//example 3.8 page no 83
//given
NF=4//noise figure in dB
B=3*10^3//bandwidth
Rs=50//sourse resistance
k=1.38*10^-23//Boltzmmans constant
T=290//tempreture
//For si of -125dBm the value of Ei is 0.245uV will produce a 10dB output to noise ratio. now consider the performance of this receiver when it is connected to an antenna with a noise figure of 20dB
N_ant=20//antenna noise figure
N_Fr=4//receiver noise figure
F_ant=10^(N_ant/10)//antenna noise factor
Fr=10^(N_Fr/10)//receiver noise factor
S_N=10//output signal to noise ratio
Si_W=(S_N)*(F_ant+Fr-1)*k*T*B//available input power in Watts
Ei=sqrt(Si_W*4*Rs)//minimum detectable signal
mprintf('the minimum detectable signal is %f uV',round(Ei*1e6*100)/100)

clc
//Chapter 3:Network noise and intermodulation distortion
//example 3.8 page no 84
//given
NF=4//noise figure in dB
B=3*10^3//bandwidth
Rs=50//sourse resistance
k=1.38*10^-23//Boltzmmans constant
T=290//tempreture
NFa=20//antenna noise figure
NFr=10//receiver noise figure
Fa=10^(NFa/10)//antenna noise factor
Fr=10^(NFr/10)//receiver noise factor
S_N=10//output signal to noise ratio
Si_W=(S_N)*(Fa+Fr-1)*k*T*B//available input power in Watts
Ei=sqrt(Si_W*4*Rs)//minimum detectable signal
mprintf('the minimum detectable signal is %f uV',round(Ei*1e6*10)/10)

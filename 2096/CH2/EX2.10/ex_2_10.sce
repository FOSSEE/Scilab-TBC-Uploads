//Example 2.10 // peak to peak, amplitude and rms value
clc;
clear;
close;
//given data :
Va=3; // vertical attenuation in mV/div
S=0.2; // 1 subdivision 
//From the figure given in question : Div=1 unit & subdiv=0.2 unit
Div=1;//unit
subdiv=0.2;//unit
Vpeak=2*Div+3*subdiv;//only for one peak
Vpp=Vpeak*2;//For peak to peak
Vpp1=(Va/Div)*Vpp;
Vmax=Vpp1/2;
Vrms=Vmax/sqrt(2);
disp(Vpp1,"peak to peak value,Vpp1(mV) = ")
disp(Vmax,"amplitude,Vmax(mV) = ")
disp(Vrms,"R.M.S value,Vrms(mV) = ")

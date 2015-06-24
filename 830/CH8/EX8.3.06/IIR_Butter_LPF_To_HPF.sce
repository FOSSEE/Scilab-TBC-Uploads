//Graphical//
//Example 8.3.06
// To Convert LPF to Analog [1].High Pass [2].Band Pass [3].Band Stop  IIR Butterworth Filter
//Using Analog Filter Transformations:Refer Table:8.12
//For the given cutoff frequency Wc = 500 Hz 
clear;
clc;
close;
omegap =  500;
omegas =  1000;
delta1_in_dB = -3;
delta2_in_dB = -40;
delta1 = 10^(delta1_in_dB/20)
delta2 = 10^(delta2_in_dB/20)
//Calculation of Filter Order
N = log10((1/(delta2^2))-1)/(2*log10(omegas/omegap))
N = ceil(N)
omegac = omegap;
//Poles and Gain Calculation
[pols,gain]=zpbutt(N,omegac);
N =1;
//
omega_LPF = omegap;  //Analog LPF Cutoff frequency
omega_HPF = omega_LPF;  //Analog HPF Cutoff frequency
omega2 = 600;    //Upper Cutoff frequency
omega1 = 300;     //Lower Cutoff Frequency
omega0 = (omega2*omega1);  
BW =  omega2 -  omega1;  //Bandwidth
disp('Analog LPF Transfer function')
[hs,pols,zers,gain] = analpf(N,'butt',[0,0],omega_LPF)
hs_LPF = hs;
hs_LPF(2) = hs_LPF(2)/500;
hs_LPF(3)= hs_LPF(3)/500;
s =poly(0,'s');
disp('Analog HPF Transfer function')
h_HPF = horner(hs_LPF,omega_LPF*omega_HPF/s)
disp('Analog BPF Transfer function')
num = (s^2)+omega0
den = BW*s
h_BPF = horner(hs_LPF,omega_LPF*(num/den))
disp('Analog BSF Transfer function')
num = s*BW
den = (s^2)+omega0
h_BSF = horner(hs_LPF,omega_LPF*(num/den))
//Plotting Low Pass Filter Frequency Response
figure
fr=0:.1:1000;
hf=freq(hs_LPF(2),hs_LPF(3),%i*fr);
hm=abs(hf);
plot(fr,hm)
a=gca();
a.thickness = 3;
a.foreground = 1;
a.font_style = 9; 
xgrid(1)
xtitle('Magnitude Response of LPF Filter Cutoff frequency = 500Hz','Analog Frequency--->','Magnitude');
//Plotting High Pass Filter Frequency Response
figure
fr=0:.1:1000;
hf_HPF=freq(h_HPF(2),h_HPF(3),%i*fr);
hm_HPF=abs(hf_HPF);
plot(fr,hm_HPF)
a=gca();
a.thickness = 3;
a.foreground = 1;
a.font_style = 9; 
xgrid(1)
xtitle('Magnitude Response of HPF Filter Cutoff frequency = 500Hz','Analog Frequency--->','Magnitude');
//Plotting Band Pass Filter Frequency Response
figure
fr=0:.1:1000;
hf_BPF=freq(h_BPF(2),h_BPF(3),%i*fr);
hm_BPF=abs(hf_BPF);
plot(fr,hm_BPF)
a=gca();
a.thickness = 3;
a.foreground = 1;
a.font_style = 9; 
xgrid(1)
xtitle('Magnitude Response of BPF Filter Upper Cutoff frequency = 600Hz & Lower Cutoff frequency = 300Hz','Analog  Frequency--->','Magnitude');
//Plotting Band Stop Filter Frequency Response
figure
fr=0:.1:1000;
hf_BSF=freq(h_BSF(2),h_BSF(3),%i*fr);
hm=abs(hf_BSF);
plot(fr,hf_BSF)
a=gca();
a.thickness = 3;
a.foreground = 1;
a.font_style = 9; 
xgrid(1)
xtitle('Magnitude Response of BSF Filter Upper Cutoff frequency = 600Hz & Lower Cutoff frequency = 300Hz','Analog  Frequency--->','Magnitude');

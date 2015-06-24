//Caption:Find the overall power factor and power factor of motor to improve overall power factor
//Exa:8.7
clc;
clear;
close;
//for load:
theta_L=acosd(0.6);//lag (in degree)
S_L=100*(cosd(53.13)+%i*sind(53.13));//in KVA
//for synchronous motor:
theta_m=acosd(0.5);//lead (in degree)
S_m=(10/0.5)*conj(cosd(theta_m)+%i*sind(theta_m));//in Watts
S_t=S_L+S_m;//overall power (in Watts)
pf=cosd(atand(imag(S_t)/real(S_t)));
disp(pf,'overall power factor=');
//for power factor=0.9
theta_t=25.84;
S_tn=(real(S_t)/0.9)*(cosd(theta_t)+%i*sind(theta_t));//in KVA
S_mn=S_tn-S_L;//in KVA
pf_n=cosd(atand(imag(S_mn)/real(S_mn)));
disp(pf_n,'power factor of motor to improve overall power factor to 0.9=');
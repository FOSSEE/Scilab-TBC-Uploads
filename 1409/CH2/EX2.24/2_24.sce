clc;
//Page no:2-33
//Example:2.24
//given fc+fm=6.854 MHz
//fc-fm=6.824 MHz
fc=13.678/2;
disp(+'MHz',fc,'fc=');
//Amplitude(sideband)=(u*Ac)/2;
Amplitudesideband=50;
u=0.4;
Ac=(Amplitudesideband*2)/u;
disp(+'V',Ac,'Ac=');

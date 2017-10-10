clc;
//page 2-10
//Example 2.3
//assume modulation index=0.2, given frequency signal is 10*sin(2*%pi*500*t) and given carrier signal is 50*sin(2*%pi*10^5)
//Given
wm=2*%pi*500;
fm=500;
wc=2*%pi*10^5;
fc=100000
disp(+'Hz',fc+fm,'Upper sideband frequency is ');
disp(+'Hz',fc-fm,'Lower sideband frequency is ');
Ec=50;
mu=0.2;
disp(+'V',(mu*Ec)/2,'Amplitude of upper and lower sidebands is ')
fusb=100500;
flsb=99500;
disp(+'Hz',fusb-flsb, 'Bandwidth is ');
//given load=600 ohms
//from carrier signal we know that Ac=50
Ac=50;
R=600;
ptotal=(Ac^2/(2*R))*(1+(mu^2/2));
disp(+'watts',ptotal,'Total power delivered is ');

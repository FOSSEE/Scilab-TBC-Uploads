//Ex15_7 Pg-776
clc

disp("Given the equation")
printf("\n E = 100*sin(628000*t) + 25*sin(621720*t) \n   - 25*cos(634280*t)) \n")
 m=50/100 //modulation factor in percentage
 Ec=100 //carrier wave amplitude in V
 Em=10 //modulated wave amplitude in V
Fc=100000 //carier frequency in Hz
Fm=1000 //modulating frequency in Hz
pi=3.14 

omega_c=2*pi*Fc //carier frequency
omega_m=2*pi*Em //modulating frequency 

disp("Now,putting these equation in the standard equations for modulated voltage wave,")
disp("  e = Ec*sin(omega_c*t)+m*Ec/2*cos(omega_c-omega_m)*t-m*Ec/2*cos(omega_c-omega_m)*t")
USB=omega_c+omega_m //upper sideband
LSB=omega_c-omega_m //lower sideband
mEc=m*Ec/2
printf("\n     = 100*sin(628000*t) + %.0f*sin(%.0f*t) \n      - %.0f*cos(%.0f*t))",mEc,USB,mEc,LSB)

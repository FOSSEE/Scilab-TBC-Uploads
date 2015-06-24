//ex16.6
R1=2.2*10^3;
R2=4.7*10^3;
C_ext=0.022*10^-6;
f_r=1.44/((R1+2*R2)*C_ext);
disp(f_r,'frequency of the 555 timer in hertz')
duty_cycle=((R1+R2)/(R1+2*R2))*100;
disp(duty_cycle,'duty cycle in percentage')
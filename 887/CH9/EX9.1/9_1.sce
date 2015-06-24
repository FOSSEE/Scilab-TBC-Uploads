clc
//ex9.1
P=0.1;      //system sensitivity change percent
R_th_U=15*10^3;      //thevenin resistance upper limit
R_th_L=5*10^3;      //thevenin resistance lower limit
//The required inequality is V_sensor*R_in/(R_th_U+R_in)>=(1-P/100)*V_sensor*R_in/(R_th_L+R_in), cancelling same terms on both sides of inequality and calculating R_in by taking equality we'll get minimum value of R_in ===>R_th_L+R_in=(1-P/100)*(R_th_U+R_in) which gives
R_in=(((1-P/100)*R_th_U)-R_th_L)*100/P;
disp(R_in/1000,'The minimum value of Rin required in Kilo-ohms')

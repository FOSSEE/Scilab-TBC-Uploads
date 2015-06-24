clc
//ex11.11
A_d=1000;      //differential gain
V_d_peak=1*10^-3;      //peak value of differential input signal
V_o_peak=A_d*V_d_peak;      //peak output signal
V_cm=100;
V_o_cm=0.01*V_o_peak;      //common mode contribution is 1% or less
A_cm=V_o_cm/V_cm;      //common mode gain
CMRR=20*log(A_d/A_cm)/2.30258;
printf(" All the values in the textbook are approximated, hence the values in this code differ from those of Textbook")
disp(CMRR,'The minimum CMRR is')

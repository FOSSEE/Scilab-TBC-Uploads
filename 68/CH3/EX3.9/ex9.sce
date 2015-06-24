// Example 3.9 : Value of capacitance C that will result in peak-peak ripple of 2V
V_P=100; // (V)
V_r=2; // (V)
f=60; // (Hz)
R=10*10^3; // (ohm)
I_L=V_P/R;
C=V_P/(V_r*f*R);
disp(C,"C (V)")
wdeltat=sqrt(2*V_r/V_P);
disp(wdeltat,"Conduction angle (rad)")
i_Dav=I_L*(1+%pi*sqrt(2*V_P/V_r));
disp(i_Dav,"i_Dav (A)")
i_Dmax=I_L*(1+2*%pi*sqrt(2*V_P/V_r));
disp(i_Dmax,"i_Dmax (A)")
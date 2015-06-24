//14.1
clc;
R=3;
V_pp =10*6;
Vrms=V_pp/(2*2^0.5);
Irms=Vrms/R;
printf("R.M.S. value of current=%.2f A",Irms)
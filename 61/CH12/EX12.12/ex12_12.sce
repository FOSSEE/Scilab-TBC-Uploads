//ex12.12
BW=3*10^6;    //unity gain bandwidth
A_ol=100;    //open loop gain
disp("non-inverting amplifier")
R_f=220*10^3;
R_i=3.3*10^3;
A_cl=1+(R_f/R_i);    //closed loop gain
BW_cl=BW/A_cl;
disp(BW_cl,'closed loop bandwidth in hertz')
disp("inverting amplifier")
R_f=47*10^3;
R_i=1*10^3;
A_cl=-R_f/R_i;
BW_cl=BW/(abs(A_cl));
disp(BW_cl,'closed loop bandwidth in hertz')
// Example 8.6
// Comparison of a real and ideal Transformer
// form figure 8.21
omegaL_1=100;
omegaM=490;
omegaL_2=2500;
Z=200;
N=sqrt(omegaL_2/omegaL_1)
// since omegaL_2>>|Z| and k=0.98 the transformer will act almost like an ideal transformer
k=omegaM/sqrt(omegaL_1*omegaL_2);
// Let us denote I_out/I_in = I_gain
// V_out/V_in=V_gain
I_gain=(%i*omegaM)/(%i*omegaL_2+Z);
Z_in=(%i*omegaL_1*Z+(omegaM)^2-(omegaL_1*omegaL_2))/(%i*omegaL_2+Z);
V_gain=(%i*omegaM*Z)/(%i*omegaL_1*Z+(omegaM)^2-(omegaL_1*omegaL_2));
disp(I_gain,"Current gain=")
disp(Z_in,"Input impedance(Ohms)=")
disp(V_gain,"Voltage gain=")

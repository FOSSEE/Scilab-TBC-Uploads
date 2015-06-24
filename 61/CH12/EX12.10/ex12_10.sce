//ex12.10
A_v1=40;    //all gains are in decibels
A_v2=32;
A_v3=20;
f_c1=2*10^3;
f_c2=40*10^3;
f_c3=150*10^3;
f=f_c1;
A_ol_mid=A_v1+A_v2+A_v3;
theta_1=phase_shift(f,f_c1);
theta_2=phase_shift(f,f_c2);
theta_3=phase_shift(f,f_c3);
theta_tot=theta_1+theta_2+theta_3;
disp(A_ol_mid,'open loop midrange gain in decibels')
disp(theta_tot,'total phase lag in degrees')
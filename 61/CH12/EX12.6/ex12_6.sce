//ex12.6
B=1;    //voltage follower configuration
A_ol=200000;
Z_in=2*10^6;
Z_out=75;
Z_in_VF=(1+A_ol)*Z_in;
Z_out_VF=Z_out/(1+A_ol);
disp(Z_in_VF,'input impedance in ohms')
disp(Z_out_VF,'output impedance in ohms')
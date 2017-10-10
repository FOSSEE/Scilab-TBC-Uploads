// Exa 7.2

clc;
clear;

// Given data

n=4; // Fourth order Butterworth low-pass filter
fH=1000; // Hz

// Solution

printf('Let C = 0.1 μF. \n');
C=0.1*10^-6; // Farads
//    Since fH = 1/(2 * %pi * R*C);
//    Therefore;
R = 1/(2*%pi*fH*C);
printf(' The calculated value of R = %.1f kΩ. \n',R/1000);

printf(' From Table 7.1, for n=4, we get two damping factors namely,\n alpha1 = 0.765 and alpha2 = 1.848.');
alpha1=0.765;
alpha2=1.848;
A01 = 3-alpha1;
A02 = 3-alpha2;
printf('\n');
printf('\n Then the pass band gain A01 = %.3f and A02 = %.3f. \n',A01,A02);
printf('\n');
printf(' The transfer function of the normalized second order low-pass Butterworth filter is     2.235                  1.152        ');
printf('\n                                                                                    ----------------  *  ------------------');
printf('\n                                                                                    Sn^2+0.765*Sn+1       Sn^2+1.848*Sn+1 ');

// Since A01= 1 + Rf/Ri = 1 + 1.235;
printf('\n  Since A01= 2.235 so Let Rf1 = 12.35 kΩ and Ri1 = 10 kΩ to make A01 = 2.235.' );
printf('\n  Since A02= 1.152 so Let Rf2 = 15.20 kΩ and Ri1 = 100 kΩ to make A01 = 1.152.' );

printf(' \n The circiuit  realized is as shown in Fig. 7.7 with component value as mentioned above.');

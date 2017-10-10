// Exa 7.4

clc;
clear;

// Given data

n=2;  // Second order Butterworth filter
fH=1000; // Lower cut off frequency(Hz)

// Solution

printf('Let C = 0.1 μF. \n');
C=0.1*10^-6; // Farads

//    Since fH = 1/(2 * %pi * R*C);
//    Therefore;
R = 1/(2*%pi*fH*C);
printf(' The calculated value of R = %.1f kΩ.  \n',R/1000);

printf(' From Table 7.1, for n=2, the damping factor alpha = 1.414.');
alpha=1.414;
A0 = 3-alpha;
printf('\n Then the pass band gain A0 = %.3f. \n',A0);
printf('\n');
printf(' The transfer function of the normalized second order low-pass Butterworth filter is       1.586       ');
printf('\n                                                                                    ----------------');
printf('\n                                                                                    Sn^2+1.414*Sn+1');

// Since Af= 1 + Rf/Ri = 1 + 0.586;
printf('\n Since A0= 1.586 so Let Rf = 5.86 kΩ  and Ri = 10 kΩ to make A0 = 1.586.' );

printf(' \n The circiuit  realized is as shown in Fig. 7.4 with component value as mentioned above.');

printf('\n By considering minimum DC offset condition, the modified value of R and C comes out to be R = 1.85 kΩ  and C=0.086 μF.');
printf('\n\n\n Frequency, f in Hz          Gain magnitude in dB 20 log(vo/vi)\n');
// Frequency Response
x=[0.1*fH,0.2*fH,0.5*fH,1*fH,5*fH,10*fH]
for i = 1:1:6 
      response(i) = 20*log10(A0/(sqrt(1+(x(i)/fH)^4)));
      printf(' %d                                %.2f      \n',x(i),response(i));
end
 

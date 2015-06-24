//Example 4.8.3 page 4.40

clc;
clear;

C= 5*10^-12;
B =50*10^6;
Ip= 1*10^-7;
e= 1.602*10^-19;
k= 1.38*10^-23;
T= 18+273;
M= 1;
Rl= 1/(2*%pi*C*B);
S_N= Ip^2/((2*e*B*Ip)+(4*k*T*B/Rl));
S_N = 10*log10(S_N); //in db
printf("The S/N ratio is %.2f dB",S_N);
M=41.54;
S_N_new= (M^2*Ip^2)/((2*e*B*Ip*M^2.3)+(4*k*T*B/Rl));
S_N_new = 10*log10(S_N_new); //in db
printf("\n\nThe new S/N ratio is %.2f dB",S_N_new);
printf("\n\nImprovement over M=1 is %.1f dB",S_N_new-S_N);

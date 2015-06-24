//caption:low pass second order filter
//to design a low pass second order filter
//since it is butterworth filter
Q=1/sqrt(2);
Wo=100;//in rad/sec.
H=-2;
bo=H;
a1=1/(Q*Wo);
a2=1/(Wo**2);
printf("It is convenient to choose R=100Kohms\n");
R=100;//in Kohms
R3=R;
R4=R;
R1=R4/(-bo);
a3=R3+R4+((R3*R4)/R1);
C5=(a1/a3)*(10**6);//in uF
C2=a2/(R3*R4*C5)*(10**9);//in nF
printf("RESULTS:\n");
printf("R=%dKohms,\nR1=%dKohms,\nR3=%dKohms,\nR4=%dKohms,\nC2=%1.3f nF,\nC5=%2.1fuF",R,R1,R3,R4,C2,C5);
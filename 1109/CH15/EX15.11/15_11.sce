clear;
clc;
f=500;Ro=400;f1=50;D1=17;
M1=10^(D1/10);
D2=4;f2=2500;
M2=10^(D2/10);
B=sqrt(((f1*f1*(M1-1))-(f2*f2*(M2-1)))/(M2-M1));
A=sqrt((B*B*M2)+(f2*f2*(M2-1)));
L11=Ro/(%pi*(A+B));
L12=Ro/(%pi*(A-B));
R11=L11*%pi*(A-B);
R12=L12*%pi*(A+B);
R21=Ro*Ro/R11;
R22=Ro*Ro/R12;
C21=L11/(Ro*Ro);
C22=L12/(Ro*Ro);
printf("The designed equalizer will have the configuration:\n");
printf(" I. R1 = %f ohms, C2 = %f microfarads, R2 = %f ohms, L1 = %f mH\n",round(R11),round(C21*(10^9))/1000,fix(R21),round(L11*(10^4))/10);
printf(" II. R1 = %f ohms, C2 = %f microfarads, R2 = %f ohms, L1 = %f mH\n\n",fix(R12),round(C22*(10^9))/1000,round(R22),round(L12*(10^3)));
M=((A*A)+(f*f))/((B*B)+(f*f));
F=10*log10(M);
printf(" Loss aat 500Hz = %f db",fix(F*10)/10);



printf("\t example 17.7 \n");
printf("\t approximate values are mentioned in the book \n");
C=0.28; // assumption
w=50000; // lb/hr
G=1500;
Qs=(w*C*(500-200));
Qd=(w/G)*(22685); // qd=22685, from previous prblm
printf("\t sensible heat : %.1e Btu/hr \n",Qs);
printf("\t approximate diffusion : %.2e Btu/hr \n",Qd);
Q=(Qs+Qd);
printf("\t total heat : %.3e Btu/hr \n",Q);
// an allowance as high as 30 per cent of the sensible load can be made and the excess water compensated for by throttling when the tower is in operation
w1=(Q/(120-85));
printf("\t total water quantity : %.2e lb/hr \n",w1);
// If the maximum liquid loading is taken as 2040 lb/(hr)(ft'!), the required tower cross section
A=(w1/2040);
printf("\t tower cross section : %.1f ft^2 \n",A);
w3=(w/A);
printf("\t new gas rate : %.0f lb/(hr)(ft^2) \n",w3);
// The two terminal temperature differences are (200 - 85) and (500 - 120).
LMTD=((500-120)-(200-85))/(log((500-120)/(200-85)));
printf("\t LMTD : %.0f \n",LMTD);
dt=35;
N=(dt/LMTD); // eq 17.88
printf("\t haV/L : %.2f \n",N);
Le=0.93;
nd=(N/(C*Le));
printf("\t number diffusion units : %.2f \n",nd);
// By extrapolation for G = 718 and L = 2040,Kxa=215
L=2040;
Kxa=215;
Z=(nd*L/Kxa); // calculation mistake
printf("\t height of tower : %.1f ft \n",Z);
di=(A)^(1/2);
printf(" ground dimensions : %.1f ft \n",di);
// ground dimensions are 5.8*8.3*8.3 ft
// end

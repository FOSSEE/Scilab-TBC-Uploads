clear;
clc; //solved using the value of w used in the solution
Rl=1000;Xg=250+(%i*200);w=2*(10^6);
Rg=real(Xg);
X1=sqrt(Rg*Rl);
X2=X1;
X3=X1;
C3=1/(w*X3);
printf("-C3 = %d pf\n",C3*(10^12));
L1=X1/w;
printf("-L1 = %d micro-henry\n",L1*(10^6));
L2=X2/w;
Xc=-%i*imag(Xg);
X21=X2+(Xc/%i);
L21=X21/w;
printf("-L2 = %d micro-henry",L21*(10^6));

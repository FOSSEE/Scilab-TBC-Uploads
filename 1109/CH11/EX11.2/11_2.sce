clear;
clc;
Za=%i*200;Zc=-%i*500;
Zt1=(Za/2)+(sqrt((Za*Za/4)+(Za*Zc)));
A=real(Zt1);
B=imag(Zt1);
printf("Iterative impedances Zt1 = %d + j(%d) ohms\n ",A,B);
Zt2=(-Za/2)+(sqrt((Za*Za/4)+(Za*Zc)));
C=real(Zt2);
D=imag(Zt2);
printf("Iterative impedances Zt2 = %d + j(%d) ohms",C,D);
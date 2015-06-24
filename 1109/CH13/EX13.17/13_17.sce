clear;
clc;
R1=2;R2=1;R3=1;R4=2;
A=[R1+R2 R2 -R4;R2 R2+R4 R4;-R1 R1 R4+R3+R1];  
B=det(A);
C=[1 R2 -R1;0 R2+R1 R1;0 R4 R4+R3+R1];
D=det(C);
E=[1 -R1;0 R4+R3+R1];
F=[R2+R1 -R1;-R1 R4+R3+R1]; 
G=[R4+R2 0 -R4;R1 1 R4;-R4 0 R4+R2];
H=[1 R1;0 R4+R3+R1];
I=[R2+R1 R1;R1 R4+R3+R1]; 
printf("Z1s = %d/%d ohms\n",B,D);
printf(" Z1o = %d/%d ohms\n",det(F),det(E));
printf(" Z2s = %d/%d ohms\n",det(A),det(C));
printf(" Z2o = %d/%d ohms\n",det(I),det(H));
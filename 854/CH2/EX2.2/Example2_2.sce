clear//
//Caption:Program to Caculate Electric Field E at P due to 4 identical charges
//Example2.2
//page 33
clc;
P = [1,1,1];
P1 = [1,1,0];
P2 = [-1,1,0];
P3 = [-1,-1,0];
P4 = [1,-1,0];
R1 = norm(P-P1);
aR1 = (P-P1)/R1;
R2  = norm(P-P2);
aR2 = (P-P2)/R2;
R3  = norm(P-P3);
aR3 = (P-P3)/R3;
R4  = norm(P-P4);
aR4 = (P-P4)/R4;
disp(R1,'R1=')
disp(aR1,'aR1=')
disp(R2,'R2=')
disp(aR2,'aR2=')
disp(R3,'R3=')
disp(aR3,'aR3=')
disp(R4,'R4=')
disp(aR4,'aR4=')
Q = 3e-09; //charge  in Coulombs
Eps = 8.854e-12; //free space permittivity
E1 = (Q/(4*%pi*Eps*R1^2))*aR1;
E2 = (Q/(4*%pi*Eps*R2^2))*aR2;
E3 = (Q/(4*%pi*Eps*R3^2))*aR3;
E4 = (Q/(4*%pi*Eps*R4^2))*aR4;
E = E1+E2+E3+E4;
disp(E,'Electric Field Intesnity at any point P due to four identical Charges in V/m=')
//Result
//R1=      1.  
//aR1=     0.    0.    1.  
//R2=      2.236068  
//aR2=     0.8944272    0.    0.4472136  
//R3=      3.  
//aR3=     0.6666667    0.6666667    0.3333333  
//R4=      2.236068  
//aR4=     0.    0.8944272    0.4472136  
//Electric Field Intesnity at any point P due to four identical Charges in V/m=   
//  6.8206048    6.8206048    32.785194  
//
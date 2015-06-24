//polymer chemistry//
//example 10.1//
N1=5;//no of molecules//
N2=10;
N3=20;
N4=20;
N5=10;
M1=5000;//molecular mass of each molecule//
M2=6000;
M3=10000;
M4=15000;
M5=25000;
M=(M1*N1+M2*N2+M3*N3+M4*N4+M5*N5)/(N1+N2+N3+N4+N5);//formula for number average molecular mass//
printf("The number average molecular mass is %f",M);
Mw=(N1*M1^2+N2*M2^2+N3*M3^2+N4*M4^2+N5*M5^2)/(M1*N1+M2*N2+M3*N3+M4*N4+M5*N5);//formula of weight-average molecular mass//
printf("\nThe weight average molecular mass is %f",Mw);
//Page Number: 9.15
//Example 9.8
clc;
//Given
p=0.99;
u=1;
q=1-p;
//As exp(-Ac^2/4*n*B)=1-p
//AndAC^2/2*n*B=S/N
//Therefore exp(-(1/2)*(S/N))=1-p
SN=2*(log(1/q));
SN1=(round(SN)+1); //Upper limit
disp('db',SN1,'S/N:');
//Hence proved

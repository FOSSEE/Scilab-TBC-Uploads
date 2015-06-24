//Page Number: 10.35
//Example 10.19
clc;
//Given
d12sqr=8;
N0=2*0.5; //W/Hz

//(c)
//As for two equiprobables
//Pe=Q(z)
//where z=sqrt(d12^2)/sqrt(2*N0)
z=sqrt((d12sqr)/(2*N0));
Pe=(1/2)*erfc(z/1.414);
disp(Pe,'Probabilty error:')

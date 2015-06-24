//page 561
//prob 12.8
//for a gausssian signal,mp=infinity(00),but we may assume 36 loading,thus mp=3*6,
clc;
Sgm=3;
m2=(Sgm^2);
mp2=((3*Sgm)^2);
y=(m2)/(mp2);
// to calculate SNR,we have SNR=3(2^n)*((m^2)/(mp^2)) 
n=8;//given
l=3*(2^(2*n))*y;//by formula
disp(l,'SNR is equal to');
disp(+'dB',(10*(log10(l))),'SNR in dB');

clear
clc

//Example 16.6
disp('Example 16.6')


K1=[1 0;10 1];//K with K12=0

eig1=spec(K1);
sigma1=spec(K1'*K1);
CN1=sqrt(max(sigma1)/min(sigma1))
mprintf('\nEigenvalues of K1 are %f and %f\n and CN is %f',eig1',CN1)




K2=[1 0.1;10 1];//K with K12=0.1

eig2=spec(K2);
sigma2=spec(K2'*K2);
CN2=sqrt(max(sigma2)/min(sigma2))

mprintf('\nEigenvalues of K2 are %f and %f\n and CN is %f',eig2',CN2)


clear
clc
//from fig E14.4a
t2=280;t1=220;
sigma1_sqr=100;sigma2_sqr=1000;
dt=t2-t1;
dsigma_sqr=sigma2_sqr-sigma1_sqr;
N=dt^2/dsigma_sqr;
for t=1:200
//For N tank in series
E(t)=((t^(N-1))*(N^N)*exp(-t*N/dt))/((factorial(N-1))*(dt^N));
end
for i=1:200
    t(i)=i;
end
plot(t,E)
xlabel('time(sec)')
ylabel('E(sec^-1)')
title('Shape of E curve')


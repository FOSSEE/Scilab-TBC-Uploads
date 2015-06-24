epsilonr=4.6;
f=2*10^9;
z0=50; //line impedance
mu0=4*%pi*10^-7;
epsilon0=8.85*10^-12;
zf=sqrt(mu0/epsilon0); //free space impedance
temp=((epsilonr-1)/(epsilonr+1))*(0.23+(0.11/epsilonr));
temp1=2*%pi*(z0/zf)*sqrt((epsilonr+1)/2);
A=temp+temp1;
wtoh=(8*%e^A)/((%e^2*A)-2);
Eff=(epsilonr+1)/2+(epsilonr-1)/2*1/(sqrt(1+12*(1/(wtoh))));
vp=3*10^8/sqrt(Eff);
lambda=vp/f;
disp("metre/second",vp,"Phase velocity");
disp("metre",lambda,"Wavelength");
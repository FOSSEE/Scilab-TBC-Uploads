//Design of interpolating filters
//(a)Design using a single stage interpolator
fp=1.8;Sout=48;Sin=4;
Ap=0.6;As=50;
fs=Sin-fp;
//finding ripple parameters
delp=(10^(Ap/20)-1)/(10^(Ap/20)+1);
dels=10^(-As/20);
N=Sout*(-10*log10(delp*dels)-13)/(14.6*(fs-fp))+1;
disp('By using single stage interpolator the filter design is:');
ceil(N)
//Design using 3-stage interpolator with I1=2;I2=3;I3=2
Ap=0.2;
Sin=[4 8 24];
Sout=[8 24 48];
fp=[1.8 1.8 1.8];
fs=Sin-fp;
delp=(10^(Ap/20)-1)/(10^(Ap/20)+1);
dels=10^(-As/20);
p=14.6*(fs-fp);
N1=((-10*log10(delp*dels)-13)./p);
N1=(Sout.*N1)+1;N=0;
for i=1:length(N1)
    N=N+N1(i);
end
disp('By using single stage interpolator the filter design is:');
ceil(N)
//Ex 2.7
clc;clear;close;
format('v',6);
c=400;//mm(circumference)
A=500;//mm^2(Cross sectional area)
N=200;//turns
//Part (a)
I=2;//A
H=N*I/(c*10^-3);//A/m
B=1.13;//T(Corresponding Flux density)
fi=B*A*10^-6;//Wb(total flux)
L=N*fi/I*1000;//mH
disp(L,"(a) Inductance of coil(mH)");
//Part (a)
I=10;//A
H=N*I/(c*10^-3);//A/m
B=1.63;//T(Corresponding Flux density)
fi=B*A*10^-6;//Wb(total flux)
L=N*fi/I*1000;//mH
disp(L,"(b) Inductance of coil(mH)");

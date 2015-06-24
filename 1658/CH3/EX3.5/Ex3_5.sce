clc;
//ex3.5
n=1.41*10**16;
mun=0.145;
mup=0.05;
q=1.6*10**-19;
//sigma=q*n*(mun+mup);
e=q*n*mun;//contribution by electrons
h=q*n*mup;//contribution by holes
disp('ohm-m^-1',e*1,"e=");
disp('ohm-m^-1',h*1,"h=");

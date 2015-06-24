clc;
clear;
T=70;//degree F
U1=0;//ft/sec
U2=30;//ft/sec
l=4;//ft
b=0.5;//ft
d=1.94;
vis=2.04*(10^(-5));
x=d*l/vis;
U=1:U2;
for i=1:U2
    Re(i)=x*i;
    CDf(i)=0.455/((log10(Re(i)))^2.58);
    Df(i)=0.5*d*i*i*l*b*CDf(i);
    xcr(i)=vis*(5*(10^5))/(d*i);
end
plot(U,Df,"x-")
plot(U,xcr,"o-")
h1=legend(['Df';'xcr'])

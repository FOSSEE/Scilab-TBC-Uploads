//Ex 5.2
clc;clear;close;
format('v',7);
N1=480;//no. of turns in primary
N2=90;//no. of turns in secondary
lfp=1.8;//m(length of flux path)
ag=0.1;//mm(airgap)
Flux=1.1;//T(flux density)
MF=400;//A/m(Magnetic flux)
c_loss=1.7;//W/kg
f=50;//Hz
d=7800;//kg/m^3(density of core)
V=2200;//V(potential difference)
//Part (a)
fi_m=V/(4.44*N1*f);//Wb
A=fi_m/Flux;//m^2(Cross sectional area)
disp(A,"(a) Cross sectional area(m^2)");
//Part (b)
Vnl2=V*N2/N1;//V(2ndary voltage on no load)
Vnl2=round(Vnl2);//V(2ndary voltage on no load)
disp(Vnl2,"(b) 2ndary voltage on no load(V)");
//Part (c)
format('v',5);
Fm1=MF*lfp;//A(Magnetootive force for the core)
Fm2=Flux/(4*%pi*10^-7)*ag*10^-3;//A(Magnetootive force for airgap)
Fm=Fm1+Fm2;//A(Total magnetomotive force)
Imax=Fm/N1;//A(maximum value of magnetizing current)
Iom=Imax/sqrt(2);//A(rms current)
v=lfp*A;//m^3(Volume of core)
m=v*d;//kg(Mass of core)
coreLoss=c_loss*m;//W(Core Loss)
Io1=coreLoss/V;//A(Core loss component of curent)
Io=sqrt(Iom^2+Io1^2);//A(no load current)
disp(Io,"(c) Primary current on no load(A)");
format('v',6);
pf=Io1/Io;//lagging pf on no load
disp(pf,"(c) Power factor(lagging) on no load");

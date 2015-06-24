clc;
warning("off");
printf("\n\n example3.3 - pg69");
// given
syms t x;
hf1=-270;  //[J/sec] - heat flow at face 1
hf2=-228;  //[J/sec] - heat flow at face2
Qgen=1.5*10^6;  //[J*m^-3*sec^-1] generation per unit volume per unit time
v=6*10^-5;  //[m^3] volume
Cp=0.093;  //[cal*g^-1*K^-1] heat capacity of copper
sp=8.91;  //specific gravity of copper
a=0.0006;  //[m^2] - area
// (a) using the overall balance
acc=hf1-hf2+Qgen*v;
printf("\n\n (a) the rate of accumulation is %fJ/sec\n\n ",acc);
// (b) 
SIx1=hf1/a;
SIx2=hf2/a;
x1=0;
// solving for the constant of integration c1 in the equation [del(p*cp*T)/delt-der(SIx)]*x=-SIx+c1;
c1=0+SIx1;
x2=0.1;
g=(-(SIx2)+c1)/x2+Qgen;
SIx=c1-(g-Qgen)*x;
disp(SIx,"SI(x)=","(b)");
// solving for constant of integration c3 in the equation p*cp*T=g*t+c3
T2=100+273.15;
t2=0;
p=sp*10^3;  //[kg/m^3] - density
cp=Cp*4.1840;  //[J*kg^-1*K^-1]
c3=p*cp*T2-g*t2;
T=(g*(10^-3)/(p*cp))*t+c3/(p*cp);
disp(T,"T=");
// solving for constant of integration c2 in the equation -k*T=der(SIx)*x^2-c1*x+c2
k=380;  //[w/m^1*K^1]
x2=0.1;
c2=k*T+(3.5*10^5)*x2^2-(4.5*10^5)*x2;
function y=T(t,x)
    y=(-(3.5*10^5)*x^2+(4.5*10^5)*x+87.7*t+1.00297*10^5)/k;
endfunction
// at face 1;
x1=0;
t1=60;  //[sec]
T1=T(t1,x1);
disp(T1,"T=","at face 1");
// at face 2
x2=0.1;
t2=60;  // [sec]
T2=T(t2,x2);
disp(T2,"T=","at face 2");







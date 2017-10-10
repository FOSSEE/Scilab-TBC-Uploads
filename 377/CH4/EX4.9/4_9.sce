disp("Nc=2((2*pi*me*K*T)/(h^2))^(3/2)");
disp("Nv=2((2*pi*mh*K*T)/(h^2))^(3/2)");
c=1.08*9.1*(10^-31);  //say effective mass of electrons=me=c
d=0.56*9.1*(10^-31);  //say effective mass of holes=mh=d
pi=3.14;
K=1.38*(10^-23);
T=300;
h=6.63*(10^-34);
a=2*(((2*pi*c*K*T)/(h^2))^(3/2));  //value in (m^-3)
b=2*(((2*pi*d*K*T)/(h^2))^(3/2));  //value in (m^-3)
e=a*(10^-6);  //value in (cm^-3)
f=b*(10^-6);  //value in (cm^-3)
printf('\nthe value of Nc = %f (cm^-3)',e);
printf('\nthe value of Nv = %f (cm^-3)',f);
disp("ni=sqrt(NcNv)*exp((-Eg)/(2*K*T))");
g=1.10;    //say g=Eg
K1=8.62*(10^-5);
l=(sqrt(e*f))*exp((-g)/(2*K1*T));  //say K1 is in eV/K;
printf('\nthe value of ni = %f (cm^-3)',l);
disp("σ = [e*n*μ(e) + e*p*μ(h)] = e*ni*(μ(e)+ μ(h))");
n=1.6*(10^-19);  //say e(in formula)=n
p=1350;  //say μ(e)(in formula)=p
q=450;  //say μ(h)(in formula)=q
m=n*l*(p+q);
printf('\n the value of Conductivity,σ = %f (ohm^-1)(cm^-1)',m);
disp("ρ=1/σ");
r=(1/m);
printf('\n the value of Resistivity,ρ = %f (ohm)(cm)',r);
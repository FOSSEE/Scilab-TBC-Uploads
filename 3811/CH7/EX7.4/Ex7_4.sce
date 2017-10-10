//Book Name: Fundamentals of electrical drives by Mohamad A. El- Sharkawi
//chapter 7
//example 7.4
//edition 1
//publisher and place:Nelson Engineering
clc;
clear;
V=480;//terminal voltage in volt
p=6;//number of poles
f=60;//frequency in hertz
Tout=300;//constant load torque in Nm
N1=1;
N2=1;
Prot=1e3;//rotational power in watt
alpha=120;//trigerring angle in degree
mprintf("\nTo find speed of the motor:")
a=120;//constant value
ns=(a*f)/p;
n=ns*(1+((N1/N2)*cosd(alpha)));
mprintf("\nThe speed of the motor is %f rpm",n)
s=(ns-n)/ns;
mprintf("\nTo compute current in DC link:")
rps=n/60;//speed in rps
omega=(2*%pi*rps);
Pout=Tout*omega;
Pd=Pout+Prot;
K=(3*sqrt(2))/%pi;
I=(Pd/(1-s))/(K*V);
mprintf("\nThe current in DC link is %f A",I)
mprintf("\nTo compute rotor rms current:")
itr=sqrt(2/3);//solved integration value
I2=itr*I;
mprintf("\nThe rotor rms current is %f A",I2)
mprintf("\nTo compute stator rms current:")
I1=(N1/N2)*I2
mprintf("\nThe stator rms current is %f A",I1)
mprintf("\nTo compute power returned to the source:")
Pr=Pd;
Pr=Pr*10^(-3);
mprintf("\nThe power returned to the source is %f watt",Pr)
mprintf("\nTo compute the losses when additional resistance is added:")
Td=Pd/omega;
rpss=ns/60;//speed in rps
omegas=(2*%pi*rpss);
Radd=(V^2*s)/(Td*omegas);//additional resistance added in ohm
I2=sqrt(((s/(1-s))*(Pd/3))/Radd);//rotor current
Padd=3*I2^2*Radd;//additional power loss
Padd=Padd*10^(-3);
mprintf("\nThe power losses when additional resistance added is %f watt",Padd)

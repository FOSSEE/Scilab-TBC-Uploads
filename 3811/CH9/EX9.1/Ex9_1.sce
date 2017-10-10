//Book name: Fundamentals of electrical drives by Mohamad A. El- Sharkawi
//chapter 9
//example 9.1
//edition 1
//publisher and place:Nelson Engineering
clc;
clear;
V=440;//source voltage in volt
Ia=76;//armature current in ampere
ns=1000;//speed of the DC shunt motor in rpm
Ra=.377;//armature resistance of the motor in ohm
Rf=110;//field resistance of the motor in ohm
Prloss=1000;//rotational losses in watt
se=60;//seconds for 1 minute
Ea=V-(Ra*Ia);
rps=ns/se;
omega=(2*%pi*rps);//angular speed of the motor
KQ=Ea/omega;//field constant
disp('a) To calculate no load speed of the motor:')
omegao=V/KQ;//angular no load speed
no=(omegao*se)/(2*%pi);
mprintf("The no load speed of the motor in rpm is %f",no)
disp('b)To calculate motor speed when Ia=60 ampere:')
Ia3=60;
omega3=(V+(Ra*Ia3))/KQ;
n3=(omega3*se)/(2*%pi);
mprintf("The speed of the motor in rpm is %f",n3)
disp('c)To calculate the torque developed during regenerative braking:')
Tl3=KQ*Ia3;
mprintf("The torque developed during regenerative braking in Nm is %f",Tl3)
disp('d)To calculate Ea during regenerative braking:')
Ea3=KQ*omega3;
mprintf("The back emf in volt is %f",Ea3)
disp('e)Power delivered by the source')
If=V/Rf;
I1=Ia+If;
Ps=I1*V;
mprintf("The power delivered by the source in watt is %f",Ps)
disp('f)To calculate terminal current under regenerative braking:')
I3=Ia3-If;
mprintf('The terminal current under regenerative braking in ampere is %f',I3)
disp('g)To calculate power generater during regenerative braking')
Pg=Ea3*Ia3;
mprintf("power generater during regenerative braking in watt is %f",Pg)
disp('h)To calculate total losses under regenerative braking')
Ploss=(Ra*(Ia3^(2)))+((V^(2))/Rf)+Prloss;
mprintf("The total losses under regenerative braking in watt is %f",Ploss)
disp('i)To calculate power delivered under regenerative braking:')
Pd=Pg-Ploss;
mprintf("The power delivered under regenerative braking in watt is %f",Pd)

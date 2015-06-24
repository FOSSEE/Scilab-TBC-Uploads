// scilab Code Exa 18.27 Isentropic Flow-centrifugal Air compressor 

T01=335;  // in Kelvin
p01=1.02; //  Initial Pressure in bar
beta1=61.4; // air angle at the inlet of axial inducer blades
gamma=1.4;
d1=0.175; // Mean Blade ring diameter at entry
d2=0.5; // impeller diameter at exit
cp=1005; // Specific Heat at Constant Pressure in J/(kgK)
A1=0.0412; // Area of cross section at the impeller inlet
R=287;

N(1)=5700; // rotor Speed in RPM
N(2)=6200;
N(3)=6700;
N(4)=7200;
for i=1:4
printf("\n for N=%d rpm\n\n",N(i))
u1=%pi*d1*N(i)/60;
u2=%pi*d2*N(i)/60;
c1=u1*tand(beta1);
T1=T01-((c1^2)/(2*cp));
p1=p01*((T1/T01)^(gamma/(gamma-1)));
ro1=(p1*1e5)/(R*T1);
pr0=((1+(u2^2/(cp*T01)))^(gamma/(gamma-1)));
disp(pr0,"(a)pressure ratio is")
m=ro1*A1*c1;
disp("kg/s",m,"(b)mass flow rate of air is")
T02=T01*(pr0^((gamma-1)/gamma));
P=m*cp*(T02-T01);
disp("kW",P*1e-3,"(c)Power required to drive the compressor P=")
end


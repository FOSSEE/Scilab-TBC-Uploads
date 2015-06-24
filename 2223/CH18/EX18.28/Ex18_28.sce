// scilab Code Exa 18.28 centrifugal Air compressor 
T01=335;  // in Kelvin
p01=1.02; //  Initial Pressure in bar
beta1=61.4; // air angle at the inlet of axial inducer blades
gamma=1.4;
N=7200; // rotor Speed in RPM
d1=0.175; // Mean Blade ring diameter at entry
d2=0.5; // impeller diameter at exit
cp=1005; // Specific Heat at Constant Pressure in J/(kgK)
A1=0.0412; // Area of cross section at the impeller inlet
R=287;
b2=A1/(%pi*d2);
disp("cm",b2*1e2,"(a)width of the impeller at exit is")
u2=%pi*d2*N/60; 
//for N=7200 rpm
p1=0.9444579; // from Ex18.27  
pr=1.4206988; //pressure ratio 
m=5.0061078; //mass flow rate of air in kg/s   
T02=370.35381;
ro2=1.1; //trial and error
cr2(1)=m/(A1*ro2);
n=2;
for i=1:n
    c2(i)=sqrt(cr2(i)^2+(u2^2));
    T2=T02-((c2(i)^2)/(2*cp));
    p02=pr*p01;
    p2=p02*((T2/T02)^(1/((gamma-1)/gamma)));
ro2=(p2*1e5)/(R*T2);
cr2(i+1)=m/(ro2*A1);
end
cr=cr2(3);
disp(p2/p1,"(b)the static pressure ratio is")

//part(c)
alpha2=atand(cr/u2);
disp("degree",alpha2,"(c)the direction alpha2 of the absolute velocity vector(c2) or the diffuser angle at entry is")

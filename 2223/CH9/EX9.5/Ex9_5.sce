// scilab Code Exa 9.5 Calculation on a gas turbine stage 

Rm=0.5; // Degree of reaction
funcprot(0);
T1=1500;  // in Kelvin
p1=10; //  Initial Pressure in bar
N=12e3; // rotor Speed in RPM
m=70; //  in kg/s
pr=2; // Pressure Ratio
n_st=0.87; // Stage Efficiency 
alpha_2=60; //  Fixed Blade exit angle 
cp=1005; // Specific Heat at Constant Pressure in J/(kgK)
R=287;
gamma=1.4;
n=(gamma-1)/gamma;
T3ss=T1/(pr^n);
delh1_3=cp*(T1-T3ss)*n_st;
delh1_2=0.5*delh1_3;
c2=sqrt(2*delh1_2);
sigma_opt=sind(alpha_2);
u=sigma_opt*c2;
// part(a) Flow coefficient
cx=c2*cosd(alpha_2);
phi=cx/u;
disp(phi,"(a)Flow coefficient is")

// part(b) mean diameter of the stage
d=u*60/(%pi*N);
disp("m",d,"(b)mean diameter of the stage is")

// part(c) power developed
P=m*delh1_3;
disp("MW",P*1e-6,"(c)power developed is")

// part(d) pressure ratio across the fixed and rotor blade rings
delh1_3ss=delh1_3/n_st;
delT1_3=delh1_3/cp;
delT1_3ss=delh1_3ss/cp;
stage_loss=delT1_3ss-delT1_3;
delT1_2=delh1_2/cp;
delT1_2s=delT1_2+(0.5*stage_loss)
pr_stator=((1-(delT1_2s/T1))^(-1/n));
disp(pr_stator,"(d)pressure ratio across the fixed blade rings is")
pr_rotor=pr/pr_stator;
disp(pr_rotor,"and pressure ratio across the rotor blade rings is")

// part(e) hub-tip ratio of the rotor 
p2=p1/pr_stator;
T2=T1-delT1_2;
ro2=(p2*1e5)/(R*T2);
l2=m/(ro2*cx*%pi*d);
p3=p2/pr_rotor;
T3=T1-delT1_3;
ro3=p3*1e5/(R*T3);
l3=m/(ro3*cx*%pi*d);
l=0.5*(l2+l3);
rm=d/2;
rh=rm-(l/2);
rt=rm+(l/2);
disp(rh/rt,"(e)hub-tip ratio of the rotor is")

// part(f) degree of reaction at the hub and tip
Rh=1-((1-Rm)*(rm^2/rh^2));
Rt=1-((1-Rh)*(rh^2/rt^2));
disp("%",Rh*1e2,"(f)degree of reaction at the hub is")
disp("%",Rt*1e2,"(f)degree of reaction at the tip is")

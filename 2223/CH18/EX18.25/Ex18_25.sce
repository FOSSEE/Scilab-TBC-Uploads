// scilab Code Exa 18.25 Calculation on two stage axial compressor 

T01=310;  // in Kelvin
funcprot(0);
gamma=1.4;
p01=1.02; //  Initial Pressure in bar
pr_o=2;
pr_o1=1.5;
N=7.2e3; // rotor Speed in RPM
d=65/100; // Mean Blade ring diameter in m
h=10/100; // blade height at entry in m
n_p=0.9; // polytropic efficiency
wdf=0.87; // work-done factor
m=25; //  in kg/s 
cp=1.005; // Specific Heat at Constant Pressure in kJ/(kgK)
R=287;
T01(1)=T01;
// part(a) stage pressure ratio
pr_o2=pr_o/pr_o1;
disp(pr_o2,"(a)pressure ratio developed by the 2nd stage is")

//part(b) stage efficiency
n=(gamma-1)/gamma;
n_st1=((pr_o1^n)-1)/((pr_o1^(n/n_p))-1);
disp("%",n_st1*1e2,"(b)stage efficiency for the stage 1 is")
n_st2=((pr_o2^n)-1)/((pr_o2^(n/n_p))-1);
disp("%",n_st2*1e2,"and stage efficiency for the stage 2 is")
// part(c)power required to drive the compressor
T02=T01*(pr_o1^((gamma-1)/gamma));
P1=m*cp*(T02-T01)/n_st1;
disp("kW",P1,"(c) power required for the 1st stage is")
T02s=T01+(T01*(pr_o1^((gamma-1)/gamma)-1)/n_st1);
P2=m*cp*T02s*(pr_o2^((gamma-1)/gamma)-1)/n_st2;
disp("kW",P2,"and power required for the 2nd stage is")



// part(d) air angles of the rotors and stators
A1=%pi*d*h;
ro_01=(p01*1e5)/(R*T01);
cx=m/(ro_01*A1);
    T1=T01-((cx^2)/(2*cp*1e3));
    p1=p01*((T1/T01)^(1/((gamma-1)/gamma)));
ro1=(p1*1e5)/(R*T1);
cx_new=m/(ro1*A1);
c1=cx_new;
disp("for first stage")
u=%pi*d*N/60;
beta1=atand(u/c1);
disp("degree",beta1,"beta1=")
wst1=cp*(T02-T01)*1e3/n_st1;
cy2=wst1/(wdf*u);
alpha2=atand(cy2/cx_new);
disp("degree",alpha2,"alpha2=")
beta2=atand((u/cx_new)-tand(alpha2));
disp("degree",beta2,"beta2=")
R=cx_new*(tand(beta1)+tand(beta2))*100/(2*u);
disp("%",R,"degree of reaction for the first stage is")

T01_II=T02s;
disp("for second stage")
T02_II=T01_II*(pr_o2^((gamma-1)/gamma));
wst2=cp*1e3*(T02_II-T01_II)/n_st2;
alpha1s=beta2;
cy1s=cx_new*tand(alpha1s);
cy2s=(cy1s)+(wst2/(wdf*u));
alpha2s=atand(cy2s/cx_new);
disp("degree",alpha2s,"alpha2s=")
beta1s=atand((u-cy1s)/cx_new);
disp("degree",beta1s,"beta1s=")
beta2s=atand((u-cy2s)/cx_new);
disp("degree",beta2s,"beta2s=")
R_II=cx_new*(tand(beta1s)+tand(beta2s))*100/(2*u);
disp("%",R_II,"Degree of Reaction for the second stage is")

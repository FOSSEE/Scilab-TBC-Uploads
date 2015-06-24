//Diffusion Temperature–Time Heat Treatment Specification

clear;
clc;

printf("\tDesign Example 5.1\n");

C0=0.2;           //Initial concentration in wt%
Cs=1;             //Surface conc in wt%
Cx=0.6;           //Conc at any position X in wt%
x=7.5*10^-4;      //Position in m
D0=2.3*10^-5;     //Preexponential factor in m^2/s
R=8.31;           //Gas law constant in J/mol-K
Qd=148000;        //Activation energy in J/mol

C=1-((Cx-C0)/(Cs-C0));
z=erfinv(C);
Dt=(x/(2*z))^2;

//Dt=D0*exp(-Qd/RT)*t = value of variable Dt
D=Dt/D0;

T=[900 950 1000 1050];
for i=1:4
    t(i)=D/exp(-Qd/(R*(T(i)+273)))/3600;
end

printf("\nTemperature(in Celsius) is\n");
disp(T);
printf("\nTime is (in hours)\n");
disp(t);

//End
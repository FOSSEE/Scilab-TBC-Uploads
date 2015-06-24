clc

Cv_O2=21.07; //kJ/mole K
Cv_CO=20.86; //kJ/mole K

p_O2=8*10^5; //Pa
p_CO=1*10^5; //Pa

V_O2=1.8; //m^3
V_CO=3.6; //m^3

T_O2=323; //K
T_CO=293; //K

R0=8314;

n_O2=p_O2*V_O2/R0/T_O2;
n_CO=p_CO*V_CO/R0/T_CO;

n=(n_O2+n_CO);
V=(V_O2+V_CO);

disp("(i) Final temperature (T) and pressure (p) of the mixture")

//Before mixing
U1=n_O2*Cv_O2*T_O2 + n_CO*Cv_CO*T_CO;

//After mixing
//U2=T*(n_O2*Cv_O2 + n_CO*Cv_CO);
//U1=U2

T=U1/(n_O2*Cv_O2 + n_CO*Cv_CO);
t=T-273;
disp("Final temperature =")
disp(t)
disp("°C")

p=n*R0*T/V/10^5;
disp("Final pressure =")
disp(p)
disp("bar")


disp("(ii) Change of entropy")
//For oxygen
dS_O1A=n_O2*R0*log(V/V_O2); //isothermal process
dS_O2A=n_O2*Cv_O2*log(T_O2/T); //constant volume process

dS_O12=dS_O1A - dS_O2A; // Change of entropy of O2

//For CO

dS_CO12=n_CO*R0*log(V/V_CO) + n_CO*Cv_CO*log(T/T_CO); //Change of entropy of CO


dS=(dS_O12 + dS_CO12)/10^3;
disp("Change of entropy of system =")
disp(dS)
disp("kJ/K")
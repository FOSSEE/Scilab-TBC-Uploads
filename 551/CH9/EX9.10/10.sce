clc
p=4*10^5; //Pa
T=293; //K
R0=8.314;

m_N2=4; //kg
m_CO2=6; //kg

M_N2=28; //Molecular mass
M_CO2=44; //Molecular mass

n_N2=m_N2/M_N2; //moles of N2
n_CO2=m_CO2/M_CO2; //moles of CO2

x_N2=n_N2/(n_N2+n_CO2);
disp("x_N2=")
disp(x_N2)

x_CO2=n_CO2/(n_CO2+n_N2);
disp("x_CO2=")
disp(x_CO2)


disp("(ii) The equivalent molecular weight of the mixture")
M=x_N2*M_N2 + x_CO2*M_CO2;
disp("M=")
disp(M)
disp("kg/kg-mole")


disp("(iii) The equivalent gas constant of the mixture")
m=m_N2+m_CO2;
Rmix=(m_N2*(R0/M_N2) + m_CO2*(R0/M_CO2))/m;
disp("Rmix=")
disp(Rmix)
disp("kJ/kg K")


disp("(iv) The partial pressures and partial volumes")
P_N2=x_N2*p/10^5;
disp("P_N2=")
disp(P_N2)
disp("bar")

P_CO2=x_CO2*p/10^5;
disp("P_CO2=")
disp(P_CO2)
disp("bar")

V_N2=m_N2*R0/M_N2*T/p*10^3;
disp("V_N2")
disp(V_N2)
disp("m^3")

V_CO2=m_CO2*R0/M_CO2*T/p*10^3;
disp("V_CO2")
disp(V_CO2)
disp("m^3")

disp("(v) The volume and density of the mixture")

V=m*Rmix*10^3*T/p;
disp("V=")
disp(V)
disp("m^3")

rho_mix=m/V;
disp("Density of mixture=")
disp(rho_mix)
disp("kg/m^3")


disp("(vi) cp and cv of the mixture")

y_N2=1.4;
cv_N2=(R0/M_N2)/(y_N2 - 1);
cp_N2=cv_N2*y_N2;

y_CO2=1.286;
cv_CO2=(R0/M_CO2)/(y_CO2 - 1);
cp_CO2=cv_CO2*y_CO2;

cp=(m_N2*cp_N2 + m_CO2*cp_CO2)/(m_N2+m_CO2);
disp("cp=")
disp(cp)
disp("kJ/kg K")

cv=(m_N2*cv_N2 + m_CO2*cv_CO2)/(m_N2+m_CO2);
disp("cv=")
disp(cv)
disp("kJ/kg K")



T1=293; //K
T2=323; //K
dU=m*cv*(T2-T1);
disp("Change in internal energy =")
disp(dU)
disp("kJ")

dH=m*cp*(T2-T1);
disp("Change in enthalpy =")
disp(dH)
disp("kJ")

dS=m*cv*log(T2/T1); //Constant volume process
disp("Change in entropy=")
disp(dS)
disp("kJ/kg K")


disp("When the mixture is heated at constant pressure")

disp("If the mixture is heated at constant pressure ΔU and ΔH will remain the same")

dS=m*cp*log(T2/T1);
disp("Change in entropy =")
disp(dS)
disp("kJ/kg K")
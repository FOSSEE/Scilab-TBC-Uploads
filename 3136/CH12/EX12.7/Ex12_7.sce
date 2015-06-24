clear all; clc;

disp("Referring to figure A-12 and assuming pure saturated liquid at the condenser outlet,we have h9=hf=93 Btu/lbm from the steam table")
disp("With p8=p9=2 psia and p6=100 psia,we have h6=h9+delta_p*144/(Eta_p*rho)")
h9=93
delta_p=100-2
Eta_p=0.8
rho=62.4*778
h6=h9+delta_p*144/(Eta_p*rho)
printf(" h6=%0.1f Btu/lbm",h6)

disp("Assuming T6 to be approximately equal to T9=585 R with the definition of boiler efficiency Eta_b=(h7-h6)*m_w/[Cp*(T4-T5)*m_g]")
h7=0.75*0.24*(1374.5-585)/0.10+93.4
printf(" h7= %0.2f Btu/lbm",h7)

disp("Assuming p6 to be approximately equal to p7=100 psia,we obtain s8s=s7=1.908 Btu/lbmR and h8s=1120 btu/lbm from the steam table")
disp("From the definition of turbine efficiency,Eta_t=(h7-h8)/(h7-h8s) we can determine the value of h8")
h8=1514.5-0.84*(1514.5-1120)
printf(" h8=%0.0f Btu/lbm",h8)
disp("Or w_t=h7-h8=331.4 Btu/lbm,w_p=0.4 Btu/lbm")

disp("Hence the additional power output from the steam power plant per unit mass flow rate of gas through the gas turbine is delta_w=(w_t-w_p)*m_w*/m_g")
delta_w=331*0.1
printf(" delta_w= %0.1f Btu/lbm=hp/(lbm/s)",delta_w)

Eta_th=(99.8+46.8)/(382.6)
printf("\n The new thermal efficiency = %0.3f =38.3 percent",Eta_th)




















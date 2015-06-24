clear all; clc;

disp("Assume as given Na=2400 rpm")
disp("T1a=68 degrees Farenheit=528R,p1=14.7 psia,p2a=8.5psig=23.2 psia")
disp("Qa=1800cfm,Eta=0.70 Nb=3600rpm and T1b=50 to 95 degrees Farenheit")

Q_a=1800
N_b=3600
N_a=2400
Q_b=Q_a*(N_b/N_a)
printf("\n Qb= %0.0f cfm",Q_b)

disp("((p2/p1)_b)^((k-1)/k)-1=(T1a/T1b)*[((p2/p1)_a)-1]*((Nb/Na)^2)")
disp("On simplifying ((p2/p1)_b)=0.313*(T1a/T1b)")
disp("We obtain p2b=14.7*[1+0.313*(T1a/T1b)]^3.5=36.6 to 39.3 psia")
disp("Also Psb=rho_1b*Q_b*H_i/Eta={(p_1b/(R*T_1b))*Qb*Cp*T_1b*[(p2/p1)^((k-1)/k)-1]}/Eta")
disp("Psb=[(3.5*14.7*144*2700/(550*60))*0.313*(T1a/T1b)]/0.7")
disp("Psb=271*(T1a/T1b)=257.8 to 280.6hp")

disp("From rho_0*Q_dash=rho_1*Q,we have the flow rate measured at the standard condition,Q_dashb=(rho_1b/rho_0)*Qb=(T0/T1b)*Qb=2795 to 2568 cfm")


































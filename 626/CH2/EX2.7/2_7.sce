clear;
clc;
close;
disp("Example2.7")
M1=3.0 //Mach no. at inlet
pt1=45*10^3 //Total pressure t inlet in Pa
Tt1=1800 //Total temperature at inlet in K
hv=12000 //Lower heating value of hydrogen kJ/kg
gm=1.3 //gamma
R=0.287 //in kJ/kg.K
//Using RAYLEIGH table for M1=3.0 and gamma=1.3, we get Tt1/Tcr=0.6032, pt1/Pcr=4.0073.
Tcr=Tt1/0.6032
Pcr=pt1/4.0073
//if exit is choked, Tt2=Tcr
Tt2=Tt1/0.6032;
cp=gm*R/(gm-1);
//Energy balance across burner:
Q1cr=cp*(Tcr-Tt1);
f=(Q1cr/120000);
//total pressure loss:
dpt=1-Pcr/pt1;
disp(Tt2,"(a)Total exit temperature if exit is choked in K:")
disp(Q1cr,"(b)Maximum heat released per unit mass of air in kJ/kg:")
disp(f,"(c)fuel-to-air ratio to thermally choke the combustor exit:")
disp(dpt,"(d)Total pressure loss (in fraction):")

clc;
clear;
V=240;//mph
ratio=1/10;
Vair=240;//mph
Fm=1;//lb; Fm =drag force on model
p=14.7;//psia; standard atmospheric pressure
//Re=Rem
//(d*V*l/vis)=(dm*Vm*lm/vism)
//here Vm=V and lm/l=ratio
//assumption made is that an increase in pressure does not significantly change viscosity
drat=V/(ratio*Vair);//where drat=dm/d
//for an ideal gas p=d*R*T
//T=Tm
//hence, pm/p=dm/d; pm/p=prat
pm=p*drat;
//F/(0.5*d*(V^2)*(l^2))=Fm/(0.5*dm*(Vm^2)*(lm^2))
F=(1/drat)*((V/Vair)^2)*((1/ratio)^2)*Fm;
disp("psia",pm,"The required air pressure in the tunnel=")
disp("lb",F,"The corrosponding drag on the prtotype for a 1 lb drag on the model=")
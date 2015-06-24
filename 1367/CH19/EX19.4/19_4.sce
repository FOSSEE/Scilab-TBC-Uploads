//Find longitudinal strength longitudianl modulous transverse modulous Poisson ratio Shear modulous
//Ex:19.4
clc;
clear;
close;
vf=0.65;
vm=1-vf;
kts=2.8;//in Gpa
ets=0.0025;//in GPa
ac=(kts*vf)+(ets*vm);//in GPa
disp(ac,"Longitudinal Strength (in GPa) = ");
ktm=130;//in GPa
etm=3.5;//in GPa
ec=(ktm*vf)+(etm*vm);
disp(ec,"Longitudianl Modulous (in GPa) = ");
e_c=1/((vf/ktm)+(vm/etm));
disp(e_c,"Transverse Modulous (in GPa) = ");
kp=0.34;//in GPa
ep=0.36;//in GPa
vlt=(vf*kp)+(vm*vm);
disp(vlt,"Poissons Ratio = ");
glt=1/((vf/2.2)+(vm/1.2));//in GPa
disp(glt,"Shear Modulous (in GPa) = ");
// Display mode
mode(0);
// Display warning for floating point exception
ieee(1);
clear;
clc;
disp("Engineering Thermodynamics by Onkar Singh Chapter 8 Example 2")
disp("from steam tables,at 5 MPa,hf_5MPa=1154.23 KJ/kg,sf_5MPa=2.92 KJ/kg K")
disp("hg_5MPa=2794.3 KJ/kg,sg_5MPa=5.97 KJ/kg K")
hf_5MPa=1154.23;
sf_5MPa=2.92;
hg_5MPa=2794.3;
sg_5MPa=5.97;
disp("from steam tables,at 5 Kpa,hf_5KPa=137.82 KJ/kg,sf_5KPa=0.4764 KJ/kg K")
disp("hg_5KPa=2561.5 KJ/kg,sg_5KPa=8.3951 KJ/kg K,vf_5KPa=0.001005 m^3/kg")
hf_5KPa=137.82;
sf_5KPa=0.4764;
hg_5KPa=2561.5;
sg_5KPa=8.3951;
vf_5KPa=0.001005;
disp("as process 2-3 is isentropic,so s2=s3")
disp("and s3=sf_5KPa+x3*sfg_5KPa=s2=sg_5MPa")
s2=sg_5MPa;
s3=s2;
disp("so x3=(s3-sf_5KPa)/sfg_5KPa")
x3=(s3-sf_5KPa)/(sg_5KPa-sf_5KPa)
x3=0.694;//approx.
disp("hence enthalpy at 3,")
disp("h3=hf_5KPa+x3*hfg_5KPa in KJ/kg")
h3=hf_5KPa+x3*(hg_5KPa-hf_5KPa)
disp("enthalpy at 2,h2=hg_5KPa=2794.3 KJ/kg")
disp("process 1-4 is isentropic,so s1=s4")
s1=sf_5MPa;
disp("s1=sf_5KPa+x4*(sg_5KPa-sf_5KPa)")
disp("so x4=(s1-sf_5KPa)/(sg_5KPa-sf_5KPa)")
x4=(s1-sf_5KPa)/(sg_5KPa-sf_5KPa)
x4=0.308;//approx.
disp("enthalpy at 4,h4=hf_5KPa+x4*(hg_5KPa-hf_5KPa)in KJ/kg")
h4=hf_5KPa+x4*(hg_5KPa-hf_5KPa)
disp("enthalpy at 1,h1=hf_5MPa in KJ/kg")
h1=hf_5MPa
disp("carnot cycle(1-2-3-4-1) efficiency:")
disp("n_carnot=net work/heat added")
disp("n_carnot=((h2-h3)-(h1-h4))/(h2-h1)")
h2=hg_5MPa;
n_carnot=((h2-h3)-(h1-h4))/(h2-h1)
disp("in percentage")
n_carnot=n_carnot*100
disp("so n_carnot=42.95%")
disp("In rankine cycle,1-2-3-5-6-1,")
disp("pump work,h6-h5=vf_5KPa*(p6-p5)in KJ/kg")
p6=5000;//boiler pressure in KPa
p5=5;//condenser pressure in KPa
vf_5KPa*(p6-p5)
disp("h5=hf_5KPa=137.82 KJ/kg")
h5=hf_5KPa;
disp("hence h6 in KJ/kg")
h6=h5+(vf_5KPa*(p6-p5))
disp("net work in rankine cycle=(h2-h3)-(h6-h5)in KJ/kg")
(h2-h3)-(h6-h5)
disp("heat added=(h2-h6)in KJ/kg")
(h2-h6)
disp("rankine cycle efficiency(n_rankine)=")
n_rankine=((h2-h3)-(h6-h5))/(h2-h6)
disp("in percentage")
n_rankine=n_rankine*100
disp("so n_rankine=36.56%")


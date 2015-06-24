// Display mode
mode(0);
// Display warning for floating point exception
ieee(1);
clear;
clc;
disp("Engineering Thermodynamics by Onkar Singh Chapter 8 Example 4")
disp("Let us assume that the condensate leaves condenser as saturated liquid and the expansion in turbine and pumping processes are isentropic.")
disp("from steam tables,h2=h_20MPa=3238.2 KJ/kg")
h2=3238.2;
disp("s2=6.1401 KJ/kg K")
s2=6.1401;
disp("h5=h_0.005MPa in KJ/kg")
disp("from steam tables,at 0.005 MPa,hf=137.82 KJ/kg,hfg=2423.7 KJ/kg,sf=0.4764 KJ/kg K,sfg=7.9187 KJ/kg K")
hf=137.82;
hfg=2423.7;
sf=0.4764;
sfg=7.9187;
disp("h5=hf+0.9*hfg in KJ/kg")
h5=hf+0.9*hfg
disp("s5=sf+0.9*sfg in KJ/kg K")
s5=sf+0.9*sfg
disp("h6=hf=137.82 KJ/kg")
h6=137.82;
disp("it is given that temperature at state 4 is 500 degree celcius and due to isentropic processes s4=s5=7.6032 KJ/kg K.The state 4 can be conveniently located on mollier chart by the intersection of 500 degree celcius constant temperature line and entropy value of 7.6032 KJ/kg K and the pressure and enthalpy obtained.but these shall be approximate.")
disp("The state 4 can also be located by interpolation using steam table.The entropy value of 7.6032 KJ/kg K lies between the superheated steam states given under,p=1.20 MPa,s at 1.20 MPa=7.6027 KJ/kg K")
disp("p=1.40 MPa,s at 1.40 MPa=7.6027 KJ/kg K")
disp("by interpolation state 4 lies at pressure=")
1.20+((1.40-1.20)/(7.6027-7.6759))*(7.6032-7.6759)
disp("=1.399,approx.=1.40 MPa")
disp("thus,steam leaves HP turbine at 1.40 MPa")
disp("enthalpy at state 4,h4=3474.1 KJ/kg")
h4=3474.1;
disp("for process 2-33,s2=s3=6.1401 KJ/kg K.The state 3 thus lies in wet region as s3<sg at 1.40 MPa.Let dryness fraction at state 3 be x3.")
s3=s2;
disp("s3=sf+x3*sfg")
disp("from staem tables,at 1.4 MPa,sf=2.2842 KJ/kg K,sfg=4.1850 KJ/kg K")
sf=2.2842;
sfg=4.1850;
disp("so x3=(s3-sf)/sfg")
x3=(s3-sf)/sfg
disp("h3=hf+x3*hfg in KJ/kg")
disp("from steam tables,at 1.4 MPa,hf=830.3 KJ/kg,hfg=1959.7 KJ/kg")
hf=830.3;
hfg=1959.7;
h3=hf+x3*hfg
disp("enthalpy at 1,h1=h6+v6*(p1-p6) in KJ/kg")
disp("h1=hf at 0.005MPa+vf at 0.005MPa*(p1-p6)")
disp("from steam tables, at 0.005 MPa,h6=137.82 KJ/kg,v6=0.001005 m^3/kg")
h6=137.82;
v6=0.001005;
p1=20*1000;//steam entering HP turbine in KPa
p6=0.005*1000;//condensor pressure in KPa
h1=h6+v6*(p1-p6)
disp("net work per kg steam=(h2-h3)+(h4-h5)-(h1-h6)in KJ/kg")
(h2-h3)+(h4-h5)-(h1-h6)
disp("heat added per kg of steam=(h2-h1)in KJ/kg")
(h2-h1)
disp("thermal efficiency=net work/heat added")
((h2-h3)+(h4-h5)-(h1-h6))/(h2-h1)
disp("in percentage")
(((h2-h3)+(h4-h5)-(h1-h6))/(h2-h1))*100
disp("pressure of steam leaving HP turbine=1.40 MPa")
disp("thermal efficiency=56.39%")

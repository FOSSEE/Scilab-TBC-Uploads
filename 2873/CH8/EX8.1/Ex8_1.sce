// Display mode
mode(0);
// Display warning for floating point exception
ieee(1);
clear;
clc;
disp("Engineering Thermodynamics by Onkar Singh Chapter 8 Example 1")
disp("T-S representation for carnot cycle operating between pressure of 7 MPa and 7KPa is shown in fig.")
disp("enthalpy at state 2,h2= hg at 7 MPa")
disp("from steam table,h=2772.1 KJ/kg")
h2=2772.1;
disp("entropy at state 2,s2=sg at 7MPa")
disp("from steam table,s2=5.8133 KJ/kg K")
s2=5.8133;
disp("enthalpy and entropy at state 3,")
disp("from steam table,h3=hf at 7 MPa =1267 KJ/kg and s3=sf at 7 MPa=3.1211 KJ/kg K")
h3=1267;
s3=3.1211;
disp("for process 2-1,s1=s2.Let dryness fraction at state 1 be x1 ")
s1=s2;
disp("from steam table, sf at 7 KPa=0.5564 KJ/kg K,sfg at 7 KPa=7.7237 KJ/kg K")
sf=0.5564;
sfg=7.7237;
disp("s1=s2=sf+x1*sfg")
disp("so x1=(s2-sf)/sfg ")
x1=(s2-sf)/sfg 
x1=0.6806;//approx.
disp("from steam table,hf at 7 KPa=162.60 KJ/kg,hfg at 7 KPa=2409.54 KJ/kg")
hf=162.60;
hfg=2409.54;
disp("enthalpy at state 1,h1=hf+x1*hfg in KJ/kg")
h1=hf+x1*hfg
disp("let dryness fraction at state 4 be x4")
disp("for process 4-3,s4=s3=sf+x4*sfg")
s4=s3;
disp("so x4=(s4-sf)/sfg")
x4=(s4-sf)/sfg
x4=0.3321;//approx.
disp("enthalpy at state 4,h4=hf+x4*hfg in KJ/kg")
h4=hf+x4*hfg
disp("thermal efficiency=net work/heat added")
disp("expansion work per kg=(h2-h1) in KJ/kg")
(h2-h1)
disp("compression work per kg=(h3-h4) in KJ/kg(+ve)")
(h3-h4)
disp("heat added per kg=(h2-h3) in KJ/kg(-ve)")
(h2-h3)
disp("net work per kg=(h2-h1)-(h3-h4) in KJ/kg")
(h2-h1)-(h3-h4)
disp("thermal efficiency")
((h2-h1)-(h3-h4))/(h2-h3)
disp("in percentage")
(((h2-h1)-(h3-h4))/(h2-h3))*100
disp("so thermal efficiency=44.21%")
disp("turbine work=969.57 KJ/kg(+ve)")
disp("compression work=304.19 KJ/kg(-ve)")

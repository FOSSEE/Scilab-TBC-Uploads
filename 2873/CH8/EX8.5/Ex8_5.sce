// Display mode
mode(0);
// Display warning for floating point exception
ieee(1);
clear;
clc;
disp("Engineering Thermodynamics by Onkar Singh Chapter 8 Example 5")
P=50*10^3;//output of plant in KW
Cpw=4.18;//specific heat of water in KJ/kg K
Tw_in=15;//cooling water entering condenser temperature in degree celcius
Tw_out=30;//cooling water leaving condenser temperature in degree celcius
disp("from steam table,at inlet to turbine,")
disp("h2=h_10MPa,700oc")
disp("h2=3870.5 KJ/kg,s2=7.1687 KJ/kg K")
h2=3870.5;
s2=7.1687;
s3=s2;
disp("for process 2-3,s2=s3 and s3<sf at 0.005 MPa so state 3 lies in wet region .Let dryness fraction at state 3 be x3.")
disp("s3=7.1687=sf at 0.005 MPa+x3*sfg at 0.005 MPa")
disp("from steam tables,at 0.005 MPa,sf=0.4764 KJ/kg K,sfg=7.9187 KJ/kg")
sf=0.4764;
sfg=7.9187;
disp("so x3=(s3-sf)/sfg")
x3=(s3-sf)/sfg
x3=0.845;//approx.
disp("h3=hf at 0.005 MPa+x3*hfg at 0.005 MPa")
disp("from steam tables,at 0.005 MPa,hf=137.82 KJ/kg,hfg=2423.7 KJ/kg")
hf=137.82;
hfg=2423.7;
disp("so h3=hf+x3*hfg in KJ/kg")
h3=hf+x3*hfg
disp("h4=hf at 0.005 MPa")
h4=hf;
disp("for pumping process,(h1-h4)=v4*(p1-p4)")
disp("from steam tables,v4=vf at 0.005 MPa=0.001005 m^3/kg")
v4=0.001005;
disp("h1=h4+v4*(p1-p4)in KJ/kg")
p1=10;//pressure of steam leave boiler in MPa
p4=0.005;//pressure of steam leave turbine in MPa
h1=h4+v4*(p1-p4)*100
disp("net output per kg of steam,w_net=(h2-h3)-(h1-h4) in KJ/kg")
w_net=(h2-h3)-(h1-h4)
disp("mass flow rate of steam,ms=P/w_net in kg/s")
ms=P/w_net
ms=29.69;//approx.
disp("by heat balance on condenser,for mass flow rate of water being mw kg/s")
disp("(h3-h4)*ms=mw*Cpw*(Tw_out-Tw_in)")
disp("so mw=(h3-h4)*ms/(Cpw*(Tw_out-Tw_in)) in kg/s")
mw=(h3-h4)*ms/(Cpw*(Tw_out-Tw_in))
disp("the heat added per kg of steam (q_add)=(h2-h1)in KJ/kg")
q_add=(h2-h1)
disp("thermal efficiency=w_net/q_add")
w_net/q_add
disp("in percentage")
w_net*100/q_add
disp("ratio of heat supplied and rejected=(h2-h1)/(h3-h4)")
(h2-h1)/(h3-h4)
disp("mass of flow rate of steam=29.69 kg/s")
disp("mass flow rate of condenser cooling water=969.79 kg/s")
disp("thermal efficiency=45.12%")
disp("ratio of heat supplied and rejected=1.822")

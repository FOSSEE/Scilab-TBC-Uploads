// Display mode
mode(0);
// Display warning for floating point exception
ieee(1);
clear;
clc;
disp("Engineering Thermodynamics by Onkar Singh Chapter 8 Example 17")
P=10*10^3;//output in KW
disp("from steam tables,h1=3625.3 KJ/s,s1=6.9029 KJ/kg K")
h1=3625.3;
s1=6.9029;
disp("due to isentropic expansion,s1=s2=s3=6.9029 KJ/kg K")
s2=s1;
s3=s2;
disp("at state 2,i.e at pressure of 2 MPa and entropy 6.9029 KJ/kg K")
disp("by interpolating state for s2 between 2 MPa,300 degree celcius and 2 MPa,350 degree celcius from steam tables,")
disp("h2=3105.08 KJ/kg ")
h2=3105.08;
disp("for state 3,i.e at pressure of 0.01 MPa entropy,s3 lies in wet region as s3<sg at 0.01 MPa.Let dryness fraction be x3 at this state")
disp("s3=sf at 0.01 MPa+x3*sfg at 0.01 MPa")
disp("from steam tables,sf at 0.01 MPa=0.6493 KJ/kg K,sfg at 0.01 MPa=7.5009 KJ/kg K")
sf=0.6493;
sfg=7.5009;
disp("so x3=(s3-sf)/sfg")
x3=(s3-sf)/sfg
x3=0.834;//approx.
disp("enthalpy at state 3,h3= hf at 0.01 MPa+x3*hfg at 0.01 MPa in KJ/kg")
disp("from steam tables,at 0.01 MPa,hf=191.83 KJ/kg,hfg=2392.8 KJ/kg")
hf=191.83;
hfg=2392.8;
h3=hf+x3*hfg
disp("let the mass of steam bled be mb per kg of steam from exit of HP for regenerative feed heating.")
disp("Considering state at exit from feed heater being saturated liquid the enthalpy at exit of feed heater will be,hf at 2 MPa")
disp("h6=hf at 2 MPa=908.79 KJ/kg")
h6=908.79;
disp("for adiabatic mixing in feed heater,for one kg of steam leaving boiler,the heat balance yields,")
disp("(1-mb)*h5+mb*h2=h6")
disp("while neglecting pump work,")
disp("h5=h4=hf at 0.01MPa=191.83 KJ/kg")
h4=191.83;
h5=h4;
disp("substituting in heat balance on the feed heater,")
disp("(1-mb)*h5+mb*h2=h6")
disp("so mb=(h6-h5)/(h2-h5)in kg per kg of steam entering HP turbine")
mb=(h6-h5)/(h2-h5)
mb=0.246;//approx.
disp("steam bled per kg of steam passing through HP stage=0.246 kg")
disp("let mass of steam leaving boiler be m kg/s")
disp("output(P)=m*(h1-h2)+m*(1-mb)*(h2-h3)")
disp("so m=P/((h1-h2)+(1-mb)*(h2-h3))in kg/s")
m=P/((h1-h2)+(1-mb)*(h2-h3))
m=8.25;//approx.
disp("neglecting pump work,h7=h6=908.79 KJ/kg")
h7=h6;
disp("heat supplied to boiler,Q_71=m*(h1-h7) in KJ/s")
Q_71=m*(h1-h7)
disp("so heat added=22411.21 KJ/s")




clear;
clc;
close;
disp("Example 5.7")
p98=0.95 //p98=pt9/pt8
p87=0.98 //p98=pt8/pt7
p70=8 //p70=pt7/pt0
p97=8 //p97=pt9/pt7
Cp=1243.7 //specific heat in J/kg.K
gm=1.3 //gamma
Tt9=900 //Total temp. of the gas entering a C-D nozzle
Tt7=Tt9
p90=1 //p90=p9/p0
p99=p98*p87*p70*p90 //p99=pt9/p9
M9=(2/(gm-1)*(p99^((gm-1)/gm)-1))^(1/2) //exit mach no.
T9=Tt9/(1+(gm-1)*M9^2/2) //The nozzle exit static temp.
a9=((gm-1)*Cp*T9)^(1/2) //speed of sound in exit plane
V9=a9*M9 //exit velocity
V9s=(2*Cp*Tt7*(1-p97^-((gm-1)/gm)))^(1/2)
p89=p87*p70*p90 //p89=pt8/p9
V9i=(2*Cp*Tt7*(1-p89^-((gm-1)/gm)))^(1/2)
Cv=V9/V9i
disp(V9,"(a)V9 in m/s:")
disp(V9s,"(b)V9s in m/s:")
disp(V9i,"(c)V9i in m/s:")
disp(Cv,"(d)The velocity coefficient Cv:")

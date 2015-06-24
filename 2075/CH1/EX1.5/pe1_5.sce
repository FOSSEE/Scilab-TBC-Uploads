//example 1.5
clc; funcprot(0);
// Initialization of Variable
Vniu1=2.45;//V
Vniu2=2.55;//V
Vinvu1=2.45;
Vinvu2=2.55;
Ri1=9000;//ohm
Ri2=1000;//ohm
Rf1=1000;
Rf2=9000;
Rg=200;//load resistance
//calculation
Iri1=Vniu1/Ri1;
disp(Iri1*1e6,"input resistor current in microA:")
Irg=(Vniu2-Vniu1)/Rg;
disp(Irg*1e6,"input resistor current in microA:")
Irf1=Irg-Iri1;
disp(Irf1*1e6,"feedback resistor current in microAmp:")
Vrf1=Irf1*Rf1;
disp(Vrf1*1000,"resistor voltage in mV:")
Vou1=Vniu1-Vrf1;
disp(Vou1,"1st output voltage in V:")
Iri2=(Vniu2-Vou1)/Ri2;
disp(Iri2*1e6,"input resistor current in microA:")
Irf2=Iri2+Irg;
disp(Irf2*1e6,"input resistor current in microA:")
Vrf2=Irf2*Rf2//feedback resistor voltage
disp(Vrf2,"feedback resistor voltage in V:")
Vo=Vrf2+Vniu2;
disp(Vo,"2nd output voltage in V:")
clear()

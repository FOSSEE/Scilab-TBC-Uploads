//example 1.4
clc;funcprot(0);
//Initialization of Variable
Ri1=950;//ohm
Ri2=1050;
Rf1=105000;//resistance
Rf2=95000;
Vin=5;//voltage
//calculation
Vinv=(Rf1/(Rf1+Ri1))*Vin;
disp(Vinv,"inverting voltage in V:")
Vni=Vinv;
disp(Vni,"non inverting voltage in V:")
Irf2=(Vin-Vinv)/Ri2;
disp(Irf2*1e6,"current through Rf2 in microA:")
Iri2=Irf2;
disp(Iri2*1e6,"current through Ri2 in microA:")
Vrf2=Irf2*Rf2;
disp(Vrf2,"voltage dropped in V:")
Vo=Vinv-Vrf2;
disp(Vo*1000,"output voltage in mV:")
clear()

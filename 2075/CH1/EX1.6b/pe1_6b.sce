//example 1.6b
clc; funcprot(0);
// Initialization of Variable
Vin=4;//V
Vs=1.8;//V
Rf=10000;//ohm
Ri=1100;//ohm
Rl=2;//ohm
Rs=0.1;//ohm
//calculation
Irf=Vin/(Rf+Ri);
disp(Irf*1e6,"input resistor current in microamp:")
Vni=Irf*Ri;
disp(Vni*1000,"inverting voltage 1 & 2 in mV:")
Ir=Vni/Rs;
disp(Ir,"current across Rs in A:")
Ve=Ir*(Rl+Rs);
disp(Ve,"emitter voltage in V:")
Vo=Ve+Vs;
disp(Vo,"output voltage in V:")
clear()

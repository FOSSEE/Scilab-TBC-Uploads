//caption:Find thermoelectric sensitivity and emf developed
//Ex3.8
clc
clear
close
T=50//temperature difference(in degree centigrate)
Scp=7.4*10^-6//sensitivity of copper against platinum(in Voli per degree centigrate)
Sccp=-34.8*10^-6//sensitivity of constantan against platinum(in Voli per degree centigrate)
Sccc=(Scp)-(Sccp)
disp(Sccc,'sensitivity(in Volt per degree centigrate)=')
E=Sccc*T
disp(E,'emf developed(in V)=')
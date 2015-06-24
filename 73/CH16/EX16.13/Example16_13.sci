//Chapter 16_Bipolar and MOS Digital Gate Circuits
//Caption : Power Dissipation
// Example16.13: Calculate the maximum power dissipated by saturated load NMOS inverter for following given values: Vdd=5V;Vth=1.5V; device transconductance parameter for load device Kl=23.34*10^-6 A/V^2.Assume Vo=0V in low state.
// Solution:
clear;
clc;
Vdd=5;// drain voltage of NMOS inverter in Volt
Vth=1.5;// threshold voltage of NMOS inverter in Volt
Kl=23.34*10^-6;// transconductance Parameter for load device
// since maximum power can be obtained if maximum device current flows whish is when Vo=low i.e.,0 V. So,for saturation region of operation we have Id=Kl*(Vgs-Vth)^2/2;
// for saturated load inverter Vgs=Vds  and 
//Vds=Vdd in low output condition,so Id=Kl*(Vdd-Vth)^2/2
Id=23.34*10^-6*(Vdd-Vth)^2/2;
Pmax=Id*Vdd;
disp('mW',Pmax/10^-3,'maximum power dissipated by saturated load NMOS inverter is:')
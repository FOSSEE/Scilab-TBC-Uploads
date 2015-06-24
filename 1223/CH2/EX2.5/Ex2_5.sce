clear;
clc;
//Example 2.5
rZ=4;//(Ohm) Zener resistance
V_Lnom=9;//(V) nominal output voltage
Izmax=0.3;//(A) maximum zener diode current
Izmin=0.03;//(A) minimum zener diode current
V_Lmax=V_Lnom+Izmax*rZ
V_Lmin=V_Lnom+Izmin*rZ
//percent regulation R
R=((V_Lmax-V_Lmin)/V_Lnom)*100;
printf('\npercent regulation=%0.1f \n',R)

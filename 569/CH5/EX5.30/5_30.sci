// Calculate senstivity of the LVDT, Instrument and resolution of instrument in mm
clc;
displacement=0.5;
Vo=2*10^-3;
Se_LVDT=Vo/displacement;
disp(Se_LVDT,'senstivity of the LVDT (V/mm)')
Af=250;
Se_instrument=Se_LVDT*Af;
disp(Se_instrument,'senstivity of instrument (V/mm)')
sd=5/100;
Vo_min=50/5;
Re_instrument=1*1/1000;
disp(Re_instrument,'resolution of instrument in mm')
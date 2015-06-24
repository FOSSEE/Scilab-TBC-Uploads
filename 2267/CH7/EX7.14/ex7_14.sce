//Part A Chapter 7 Example 14
clc;
clear;
close;
rcv=71.5;//cm of Hg(Recorded condenser vaccum)
br=76.8;//cm of Hg(Barometer reading)
Tc=35;//degree C(Temperature of condensation)
Tw=27.6;//degree C(Temperature of hot well)
mc=1930;//kg(Mass of condensate/hour)
mw=62000;//kg(Mass of cooling water/hour)
T1=8.51;//degree C(Inlet temperature)
T2=26.24;//degree C(Outlet temperature)
pc=(br-rcv)/73.55*101.325;//kPa(condenser pressure)
p_partial=5.628;//kPa(at 35 degree C)
hf=146.68;//kJ/kg
hfg=2418.6;//kJ/kg
x=(mw*(T2-T1)*4.18/mc+4.18*Tw-hf)/hfg;//dryness fraction
disp("State of steam(Dryness fraction) entering condenser is "+string(x));

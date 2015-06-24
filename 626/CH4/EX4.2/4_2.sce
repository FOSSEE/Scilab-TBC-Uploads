clear;
clc;
close;
disp("Example 4.2")
m=50 //mass flow rate in kg/s
ec=0.9 //compressore polytropic efficiency
Tt2=288 //inlet total temp in K.
pt2=100000 // inlet total pressure in Pa
gm=1.4 //gama
cp=1004 //specific heat in J/kg.K
p=35 //total pressure ratio
tr=p^((gm-1)/(gm*ec)) //relation between total pressure and temp ratios
Tt3=Tt2*tr //Total exit temp
cae=(p^((gm-1)/gm)-1)/(tr-1) //compressor adiabatic efficiency
pc=m*cp*(Tt3-Tt2)/10^6 // compressor shaft power
disp(Tt3,"(a)Compressor exit total temperature in K :")
disp(cae,"(b)Compressor adiabatic efficiency:")
disp(pc,"(c)Comprssor shaft power in MW :")
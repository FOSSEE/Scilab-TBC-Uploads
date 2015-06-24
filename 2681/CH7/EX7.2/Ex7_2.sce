//inductance  for  given dimensions
//given
clc
l=100//mils
d=10//mils
Lw=5.08*l*(log(l/d)+0.386)//PH/mil
Lw=round(Lw)///rounding off decimals
disp(Lw*1d-3,'the inductance  in nH/mil')//nH/mil

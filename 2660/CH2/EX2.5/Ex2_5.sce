clc
t = 1.5 // thickness in mm
c = 0.05*t // clearance in mm
D = 25.4 // outside diameter in mm 
D_o = D - 0.05 // blank die opening in mm
B_s = D_o - 2*c // blanking punch size in mm
d = 12.7 // internal diameter in mm 
P_s = d + 0.05 // piercing punch size in mm
D_s = P_s + 2*c // piercing die size in mm
printf("\n clearance = %0.3f mm\n blank die opening size = %0.2f mm ",c ,D_o)
printf("\n blanking punch size = %0.2f mm\n piercing punch size = %0.2f mm\n piercing die size = %0.2f mm",B_s,P_s,D_s )

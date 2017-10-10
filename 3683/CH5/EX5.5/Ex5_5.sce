dia=300//in mm
Asc=8*0.785*20^2//8-20 mm dia bars, in sq mm
helical_dia=8//in mm
pitch=25//in mm
cover=40//in mm
sigma_cc=5//in MPa
sigma_sc=130//in MPa
fck=25//in MPa
fy=250//in MPa
Ag=0.785*dia^2//in sq mm
Ac=Ag-Asc//in sq mm
P=sigma_cc*Ac + sigma_sc*Asc//in N
//to find volume of helical reinforcement
core_dia=dia-2*cover+2*helical_dia//in mm
l=%pi*core_dia//length of helical steel for one revolution, in mm
Ab=l*0.785*helical_dia^2/pitch//volume of helical reinforcement per mm height of column, in mm^3
Ak=0.785*core_dia^2-Asc//in sq mm
Ac=0.785*core_dia^2//in sq mm
m=Ab/Ak
n=0.36*(Ag/Ac-1)*fck/fy
//as m > n
P=1.05*P//in N
mprintf("Safe load=%f kN",P/10^3)

P=280//in kN
e=50//eccentricity, in mm
b=300//width, in mm
D=300//depth, in mm
sigma_cc=4//in MPa
sigma_cbc=5//in MPa
m=18.66//modular ratio
cover=50//in mm
Asc=4*0.785*20^2//four 20 mm dia bars, in sq mm
Ag=b*D//in sq mm
Ac=Ag-Asc//in sq mm
sigma_cc_cal=P*10^3/(Ac+1.5*m*Asc)//in MPa
I=b*D^3/12 + (m-1)*Asc*(D/2-cover)^2//in mm^4
z=I/(D/2)//in mm^3
sigma_cbc_cal=P*10^3*e/z//in MPa
sigma_max=sigma_cc_cal + sigma_cbc_cal//in MPa
sigma_min=sigma_cc_cal - sigma_cbc_cal//in MPa
mprintf("Maximum stress = %f MPa (compressive)\nMinimum stress = %f MPa (tensile)", sigma_max,sigma_min)

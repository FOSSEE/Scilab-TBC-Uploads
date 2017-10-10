P=200//in kN
b=200//width, in mm
D=350//depth, in mm
sigma_cc=5//in MPa
sigma_cbc=7//in MPa
m=13.33//modular ratio
Mxx=6//in kN-m
Myy=4//in kN-m
cover=40//in mm
eff_cover=cover+25/2//in mm
Asc=4*0.785*25^2//four 25 mm dia bars, in sq mm
Ag=b*D//in sq mm
Ac=Ag-Asc//in sq mm
sigma_cc_cal=P*10^3/(Ac+1.5*m*Asc)//in MPa
//to find bending stress on XX axis
Ixx=b*D^3/12 + (m-1)*Asc*(D/2-eff_cover)^2//in mm^4
Zxx=Ixx/(D/2)//in mm^3
sigma_cbc_xx=Mxx*10^6/Zxx//in MPa
//to find bending stress on YY axis
Iyy=D*b^3/12 + (m-1)*Asc*(b/2-eff_cover)^2//in mm^4
Zyy=Iyy/(b/2)//in mm^3
sigma_cbc_yy=Myy*10^6/Zyy//in MPa
sigma_cbc_cal=sigma_cbc_xx + sigma_cbc_yy//in MPa
sigma_max=sigma_cc_cal + sigma_cbc_cal//in MPa
sigma_min=sigma_cc_cal - sigma_cbc_cal//in MPa
mprintf("Maximum stress = %f MPa (compressive)\nMinimum stress = %f MPa (tensile)", sigma_max,sigma_min)

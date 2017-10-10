b=300//width, in mm
d=600//effective depth, in mm
W=100//UDL including self-weight, in kN/m
Pt=2//percentage tensile steel
l=7.2//span, in m
sigma_cbc=7//in MPa
sigma_st=190//in MPa
m=13.33//modular ratio
V=W*l/2//in kN
Tv=(V*10^3)/(b*d)//in MPa
Tcmax=1.8//in MPa
//as Tv>Tcmax, section is to be redesigned so that Tv becomes less than Tcmax
mprintf("Nominal shear stress in beam=%f MPa\nFor given grade of concrete, Tcmax=1.8 MPa and as Tv > Tcmax, section is to be redesigned so that Tv becomes less than Tcmax", Tv)

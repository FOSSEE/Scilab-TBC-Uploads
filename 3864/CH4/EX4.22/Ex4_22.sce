clear
//

//Initilization of Variables

L=1000 //mm //span

//Rectangular Section

b=200 //mm //width
d=400 //mm //depth

sigma=1.5 //N/mm**2 //Shear stress

//Calculations

//Let AB be the cantilever beam subjected to load W KN at free end

//MAx shear Force
//F=W*10**3 //KN

//Since Max shear stress in Rectangular section
//sigma_max=1.5*F*A**-1 
//After sub values and further simplifyng we get
W=1.5*b*d*(1.5*1000)**-1 //KN

//Moment at fixwed end
M=W*1 //KN-m
y_max=d*2**-1 //mm

//M.I
I=1*12**-1*b*d**3 //mm**3

//MAx Stress
sigma_max=M*10**6*I**-1*y_max

//Result
printf("\n Concentrated Load is %0.2f  N/mm**2",sigma_max)

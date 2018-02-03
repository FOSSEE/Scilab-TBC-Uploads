clear
//
//

//Initilization of Variables

D=200 //mm //Depth
b=140 //mm //width

//Plate
b2=160 //mm //Width
t2=10 //mm //Thickness

L=4000 //mm #Length
l=4000 //mm #Length
FOS=4 //Factor of safety
sigma=315 //N/mm**2 //stress
a2=1*7500**-1 
I_xx=26.245*10**6 //mm**4 //M.I at x-x
I_yy=3.288*10**6 //mm**4 //M.I at y-y
a=3671 //mm**2 //Area
k_x=84.6//mm
k_y=29.9 //mm

//Calculations

//Total Area
A=a+2*t2*b2 //mm**2

//M.I
I=I_yy+2*12**-1*t2*b2**3 //mm**4

k=(I*A**-1)**0.5 //mm

//Let X=L*k**-1
X=L*k**-1

//Appliying Rankine's Formula
P=sigma*A*(1+a2*(X)**2)**-1 //N

//Safe Load
S=P*(FOS)**-1*10**-3 //KN

//Result
printf("\n Safe axial Load is %0.2f  KN",S)

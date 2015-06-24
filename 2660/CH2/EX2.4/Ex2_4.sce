clc
b = 25 // width of blank in mm
l = 30 // length of blank in mm
tau = 450 // ultimate shear stress of material in N/mm^2
t = 1.5 // thickness of metal strip in mm
p = 2*(l + b) // perimeter of blank in mm
f = p*t*tau // blanking force in N
Pt = 0.25*t // punch travel in mm
w = f*Pt // work done in Nmm
printf("\n blanking force  = %0.2f KN\n work done  = %0.2f Nm", f/1000,w/1000)

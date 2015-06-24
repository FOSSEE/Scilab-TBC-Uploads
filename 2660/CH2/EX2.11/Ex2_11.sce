clc
t = 3.2 // thickness of blank in mm
l = 900 // bending length in mm
sigma = 400 // ultimate tensile strength in N/mm^2
k = 0.67 // die opening factor
r1 = 9.5 // punch radius in mm
r2 = 9.5 // die edge radius in mm
c = 3.2 // clearance in mm
w = r1 + r2 + c // width between contact points batween die and punch in mm
F= (k*l*sigma*t^2)/w // bending force in N
F=floor(F/10)*10 // N
printf("\n bending force = %0.2f kN" ,F/1000)

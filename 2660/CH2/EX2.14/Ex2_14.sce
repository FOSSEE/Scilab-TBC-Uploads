clc
w = 2 // width in mm
t = 5 // thickness in mm
theta=6 // shear in degrees
tau = 382.5 // ultimate shear stress in MPa
F = w*t*tau*1000 // cutting force in N
l = t/sin(theta*%pi/180) // length to be cut in mm
F_i = l*t*tau // cutting force in N
printf("\n cutting force with parallel cutting edges = %0.3f MN\n cutting force when shear is considered = %0.2f kN ",F/10^6 ,F_i/1000)


clc
f = 0.2 // feed in mm/rev.
t = 0.2 // uncut chip thickness in mm
alpha = 10 // rake angle in degrees
fc = 1600 // cutting force in N
ft = 850 // thrust force in N
tc = 0.39 // chip thickness in mm
r = t/tc // chip thickness ratio
d = 2 // depth of cut in mm
b = 2 // mm
alpha2 = alpha*%pi/180 // rake angle in radians
phi = atan(r*cos(alpha2)/(1-r*sin(alpha2))) // shear angle in radians
phi2 = phi*180/%pi // shear angle in degree
fs = fc*cos(phi)-ft*sin(phi) //shear force in N
fn = fc*sin(phi)+ft*cos(phi) // normal force in N
f = fc*sin(alpha2)+ft*cos(alpha2) // friction force in N
mu =((fc*tan(alpha2)+ft)/(fc-ft*tan(alpha2))) //kinetic coefficient of friction
s = fc/(b*t) // specific cutting energy in N/mm^2
printf("\n Shear force = %d N\n Normal force = %0.1f N\n Friction force = %0.1f N\n Kinetic coefficient of friction = %0.3f" , fs , fn ,f , mu)
printf("\n Specific cutting energy = %d N/mm^2" , s)
// 'Answers vary due to round off error'

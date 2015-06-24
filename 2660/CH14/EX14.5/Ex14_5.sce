clc
t = 0.25 // uncut chip thickness in mm
b = 2.5 // width of cut in mm
v = 2.5 // cutting speed in m/s
alpha = 10 // rake angle in degrees
fc = 1130 // cutting force in N
ft = 295 // thrust force in N
tc = 0.45 // chip thickness in mm
r = t/tc // chip thickness ratio
alpha = alpha*%pi/180 // rake angle in radians
phi = atan((r*cos(alpha))/(1-r*sin(alpha))) // shear angle 
phi2 = phi*180/%pi // shear angle
fs = fc*cos(phi) - ft*sin(phi) //shear force in N
printf("\n Force of shear at shear plane = %0.2f N" , fs)
mu = atan((fc*sin(alpha)+ft*cos(alpha))/(fc*cos(alpha)-ft*sin(alpha))) //friction anglele
printf("\n Friction angle = %0.3f degree", mu )
// 'Answers vary due to round off error'

clc
t = 0.5 // uncut chip thickness in mm
b = 3 // width of cut in mm
alpha = 15 // rake angle in degrees
alpha = alpha*%pi/180 // rake angle in radians
r = 0.383 // chip thickness ratio
mu = 0.7 // average coefficient of friction on tool face
bita = atan(mu) // friction angle
tau = 280 // yield stress in N/mm^2
phi = atan((r*cos(alpha))/(1-r*sin(alpha))) // shear angle 
fc = (tau*b*t)/(sec(bita-alpha)*cos(phi+bita-alpha)*sin(phi)) // cutting force in N
ft = (fc*(mu-tan(alpha)))/(1+mu*tan(alpha)) // thrust force in N
F = fc*sin(alpha)+ft*cos(alpha) // tangential force on tool face in N
F = ceil(F)
N = fc*cos(alpha)-ft*sin(alpha) // normal force on tool face in N
printf("Tangential force on tool face = %d N\n normal force on tool face = %0.1f N" , F,N)
// 'Answers vary due to round off error'



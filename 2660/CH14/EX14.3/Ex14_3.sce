clc
mu1 = 0.15 // coefficient of friction   
mu2 = 0.18 // coefficient of fricton
alpha = 14 // angle of contact in degree
alpha = alpha*%pi/180
bita = 10 // semi-cone angle in degree
bita = bita*%pi/180
sigma_0 = 1.40 // kN/mm^2
h0 = 1.5 //mm
h1 = 1 // mm
B = (mu1+mu2)/(tan(alpha)+tan(bita))
sigmad = (sigma_0*(1+B)*(1-(h1/h0)^B))/B // drawing stress in kN/mm^2
d1 = 11 // outside diameter in mm
t = 1 // thickness in mm
d2 = d1-t // mm
a = (%pi*((d1)^2-(d2)^2))/4 // area in mm^2
l = sigmad*a // load in kN
s = 0.65 // drawing speed in m/s
w = l*s // work in kJ/s
p = w // power in kW
printf("\n Drawing load = %0.3f kN\n Power rating of motor = %0.2f kW" , l , p)
clc
t = 0.127 // uncut chip thickness in mm
b = 6.35 // width of cut in mm
v = 2 // cutting speed in m/s
alpha = 10 // rake angle in degrees
fc = 567 // cutting force in N
ft = 227 // thrust force in N
tc = 0.228 // chip thickness in mm
r = t/tc // chip thickness ratio
alpha = alpha*%pi/180 // rake angle in radians
phi = atan(r*cos(alpha)/(1-(r*sin(alpha)))) // shear angle 
phi1 = phi*180/%pi // shear angle
printf("\n Shear angle = %0.2f degree" , phi1) 
mu =((fc*sin(alpha)+ft*cos(alpha))/(fc*cos(alpha)-ft*sin(alpha))) //coefficient of friction
bita = atan(mu) // friction angle
bita = bita*180/(%pi)
printf("\n Friction angle = %0.2f degree", bita )
fs = fc*cos(phi)-ft*sin(phi) //shear force in N
taus = (fs*sin(phi))/(b*t) // shear stress
printf("\n Shear stress = %0.1f N/mm^2" , taus)
cp = fc*v/1000 // cutting power in kw
printf("\n Cutting power = %0.3f kw " , cp)
vc = v*r // chip velocity in m/s
printf("\n Chip velocity = %0.3f m/s",vc)
ss = cotg(phi) + tan(phi-alpha) // shear strain
printf("\n shear strain = %0.3f" , ss)
spl = t/sin(phi) // shear plane length
vs = v*cos(alpha)/cos(phi-alpha) // shear velocity
S = vs*10/spl // shear strain rate
S = S*10^3 // shear strain rate
printf("\n Shear strain rate = %.3f s^-1" , S)
// 'Answers vary due to round off error'


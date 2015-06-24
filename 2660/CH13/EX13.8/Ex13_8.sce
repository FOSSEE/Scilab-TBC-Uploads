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
d2 = d1-2*t // mm
a = (%pi*((d1)^2-(d2)^2))/4 // area in mm^2
l = sigmad*a // load in kN
s = 0.65 // drawing speed in m/s
w = l*s // work in kJ/s
p = w // power in kW
printf("\n Drawing load = %0.3f kN\n Power rating of motor = %0.2f kW" , l , p)
// 'Answers vary due to round off error'


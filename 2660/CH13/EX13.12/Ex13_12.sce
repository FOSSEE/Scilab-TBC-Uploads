clc
h1 = 6.35 // thickness in  mm
mu = 0.2 // coefficient of friction
r = 50 // rolled radius in cm
r = r*10 // mm
R = 30 // reduction in percent
h0 = h1*100/(100-R) // mm 
delta_h = h0-h1 // mm
alpha = acos(1-(delta_h/(2*r))) // angle of contact
Ho = 2*sqrt(r/h1)*atan(sqrt(r/h1)*alpha)
Hn = (Ho - (log(h0/h1))/mu)/2 
theta = sqrt(h1/r)*tan(sqrt(h1/r)*(Hn/2)) // neutral plane in radians
theta = theta*180/%pi // neutral plane in degrees
printf("\n Neutral plane = %0.2f degree" , theta)
// 'Answers vary due to round off error'

clc
h0 = 25 // thickness of plate in mm 
h1 = 20 // mm 
delta_h = h0-h1 // mm
sigma = 100 // maximum pressure in N/mm^2
D = 500 // rolled diameter in mm
r = D/2 // rolled radius in mm
alpha = acos(1-(delta_h/D)) // angle of contact in radians
mu = tan(alpha) // coefficient of friction
Ho = 2*sqrt(r/h1)*atan(sqrt(r/h1)*mu)
Hn = (Ho - (log(h0/h1))/mu)/2
theta = sqrt(h1/r)*tan(sqrt(h1/r)*(Hn/2)) // radian
hn = h1 + r*theta^2 // neutral section in mm
x = hn/h0 
bs = (1-x)*100 // backward slip
y = hn/h1
fs = (y-1)*100 // forward slip
sigma0 = 2*sigma/sqrt(3)
pn = sigma0*hn*exp(mu*Hn)/h1 //N/mm^2
printf("\n Neutral section = %0.1f mm" , hn)
printf("\n Backward slip = %0.1f percent\n Forward slip = %0.1f percent" , bs,fs)
printf("\n Maximum pressure = %0.1f N/mm^2" , pn)
 // 'Answers vary due to round off error'

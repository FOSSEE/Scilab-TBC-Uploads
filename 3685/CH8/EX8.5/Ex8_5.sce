clc
N1 = 3000 // Speed of rotation of flywheel in RPM
I = 0.54 // Moment of inertia of flywheel in kgm^2
ti_ = 15 // Temperature of insulated system in degree Celsius 
m = 2 // Water equivalent of shaft 
printf("\n Example 8.5")
w1 = (2*%pi*N1)/60 // Angular velocity of rotation in rad/s
Ei = 0.5*I*w1^2 // rotational kinetic energy
dt = Ei/(1000*2*4.187) // temperature change
ti = ti_+273// Temperature of insulated system in Kelvin
tf = ti+dt // final temperature
AE = integrate('m*4.187*(1-(ti/T))','T',ti,tf)
UE = Ei/1000 - AE // Unavailable enrgy
w2 = sqrt(AE*1000*2/I) // Angular speed in rad/s 
N2 = (w2*60)/(2*%pi) // Speed of rotation in RPM
printf("\n The final RPM of the flywheel would be %d RPM",N2)


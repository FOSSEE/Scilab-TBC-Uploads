//Example 8.5.2
//Calculate the rain attenuation
clc
clear
Upfreq=17.80            //17.80Ghz
                        //Polarization=vertical
kv=0.0510
av=1.0927
elevationangle=45
hs=0.05
hr=4.00
R=63 
latitude=25
Ls=((hr - hs)/(sind(elevationangle)))
printf("The slant path length is %f km",Ls)

Lg=Ls*cosd(elevationangle)
printf("The horizontal projection of slant path length is %f km \n",Lg)

Yr=kv*(R)^av
printf("The specific attenuation is %f dB/km \n",Yr)

r=1/(1+0.78*(sqrt((Lg*Yr)/Upfreq))-0.38*(1-exp(-2*Lg)))
printf("The horizontal reduction factor for Miami is %f \n",r)

eta=atand((hr - hs)/(Lg*r))
Lr=(Lg*r)/(cosd(elevationangle))
X=36-abs(latitude)
v=1/(1+sqrt(sin(elevationangle))*(31*(1-exp(-(elevationangle/(1+X)))))*(sqrt(Lr*Yr)/Upfreq^2)-0.45)
printf("Vertical adjustment factor for Miami is %f \n",v)

Le=Lr*v
printf("Effective path length for Miami %f \n",Le)

A=(Yr*Le)
printf("Rain attenuation for Miami uplink of the average year is %f dB ",A)

// given data
clc
// most of the data is used is from previous example:
phi=27.166 // in degree
n=17 // day
ws=78.66 // degrees
dlta=-20.96 // in degrees
Ho=22926.408 // kj/m^2 per day
Hg=14450.418 // kj/m^2 per day
Hd=5266.2473 // kj/m^2 per day

w=(11.5-12)*15 // in degrees

Io=3600*1.367*(1+0.033*cosd(360*17/365.0))*(cosd((phi))*cosd((dlta))*cosd((w)))+sind((dlta))*sind((phi))

a=0.409+0.5016*sind(ws-60)
b=0.6609-0.4767*sind(ws-60)

Ig=Hg*(a+b*cosd(w))*Io/Ho // in kJ/m^2-h

printf("The monthly average of hourly global radiation is %.2f kJ/m^2-h",Ig)

adash=0.4922+(0.27/(Hd/Hg))
bdash=2*(1-adash)*(sind(ws)-1.7328*cosd(78.66))/(1.7328-0.5*sind(2*78.66)) 


Id=5259.6*(1.2321-0.3983*cosd((w)))*Io/Ho // kJ/m^2-h



printf("\n The hourly diffuse radiations are %.2f kJ/m^2-h",Id)

// the solution in the textbook is wrong as the value of b and bdash are wrong

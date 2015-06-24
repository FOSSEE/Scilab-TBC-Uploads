clc
//to calculate thickness
//mass absorption coefficient mum of an absorber is related with linear absorption coefficient mu and density of the material rho is given by
//mu=rho*mum=2.7*0.6=1.62 cm^-1
mu=1.62
//if initial intensity Io of the X-ray beam is reduced to I in traversing a distance x in absorber I=Io*e^-mu*x
//where I/Io=20
//put above values in the  below equation , we get
x=(2.3026*(log(20)/log(10)))/1.62
disp("thickness is x="+string(x)+"cm")

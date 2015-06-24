clc
//to calculate numerical aperture
del=0.02 //relative refractive index difference between the core and the cladding of the fibre i.e. del=(n1-n2)/n1
n1=1.46      //refractive index of core of W-step index fibre 
n2=n1-del*n1
NA=((n1+n2)*(n1-n2))^(1/2)
disp("numerical aperture is NA="+string(NA)+"unitless")
//to calculate critical angle at the core cladding interface within the fibre
thetac=asind(n2/n1)
disp("thetac="+string(thetac)+"degree")

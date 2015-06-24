clc
//to calculate intensity
mu=1.5 //refractive index(unitless)
t=1.5*10^-6 //thickness of thin glass plate in m
pathdifference=(mu-1)*t // in m
lambda=5*10^-7 //wavelength in m
//del=2*%pi*pathdifference/lambda
del=3*%pi
a1=1
      //where a1=a2=a
a2=1
//formula is I=a1^2+a2^2+2*a1*a2*cos del
// where cos 3%pi=-1
I=a1^2+a2^2+2*a1*a2*(-1) 
disp("the intensity at the centre of the screen is I="+string(I)+"unitless" )
//to calculate lateral shift
D=1 //distance in m
twod=5*10^-4 //distance between two slits in m
mu=1.5 //refractive index (unitless)
t=1.5*10^-6 //thickness of thin glass plate in m
x0=D*(mu-1)*t/twod
disp("the lateral shift of the central maximum is x0="+string(x0)+"m")

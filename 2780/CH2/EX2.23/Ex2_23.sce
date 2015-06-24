clc
//to calculate wavelength of the light
D15=0.590*10^-2 //diamater of 15th ring in m
D5=0.336*10^-2 //diameter of 5th ring in m
p=10
R=1 //radius of plano convex lens in m
//formula is lambda=Dn+p^2-Dn^2/4pR
lambda=((D15^2)-(D5^2))/(4*p*R)
disp("the wavelength of the monochromatic light is lambda="+string(lambda)+"m")


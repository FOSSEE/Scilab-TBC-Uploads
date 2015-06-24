// Additional solved numerical questions  , Example(set 2)  13_b , pg 354
n1=1.5//core refractive index
n2=1.447//cladding refractive index
n0=1//refractive index of air
NA=sqrt(n1^2-n2^2)//numerical aperture
alpha_m =asin(NA/n0)//angle of acceptance   (in radian)
printf("NA=%.1f \n",NA)
printf("alpha_m=%.2f  degree\n",(alpha_m*180)/%pi)

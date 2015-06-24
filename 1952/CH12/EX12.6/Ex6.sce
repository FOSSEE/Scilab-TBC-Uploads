// Additional solved examples , Example 6 , pg 332
n1=1.5//core refractive index
n2=1.45//cladding refractive index
n0=1//refractive index of air
NA=sqrt(n1^2-n2^2)//numerical aperture
alpha_m =asin(NA/n0)//angle of acceptance   (in radian)
phi_m=asin((n0*sin(alpha_m))/n1)//   no*sin(alpha_m)=n1*sin(phi_m) (in radian)
phi_c=asin(n2/n1)  //critical angle   (in radian)
printf("NA=%.2f \n",NA)
printf("alpha_m=%.2f  degree\n",(alpha_m*180)/%pi)
printf("phi_m=%.2f degree\n",(phi_m*180)/%pi)
printf("phi_c=%.2f  degree",(phi_c*180)/%pi)

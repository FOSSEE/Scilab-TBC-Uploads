// chapter 3 , Example 3.2 , pg 85
n1=1.5//core refractive index
n2=1.47//cladding refractive index
c=3*10^8//speed of light(in m/s)
P=(n1*(n1-n2))/(n2*c)  //pulse broadening per unit length due to multiple dispersion
//P=(del_t/L)    where del_t=time interval  , L=distance  transversed by ray inside core
printf("pulse broadening per unit length due to multiple dispersion(in s/m)")
disp(P)

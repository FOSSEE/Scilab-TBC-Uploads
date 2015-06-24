// chapter 3 , Example 3.3 , pg 85
n1=1.5//core refractive index
n2=1.47//cladding refractive index
n0=1//refractive index of air
a=100*10^-6/2  //radius of core
NA=sqrt(n1^2-n2^2)//numerical aperture
alpha_m =asin(NA/n0)//angle of acceptance   (in radian)
phi_m=asin((n0*sin(alpha_m))/n1)//   no*sin(alpha_m)=n1*sin(phi_m)  (in radian)
L=a/tan(phi_m)  //(in m)
printf("Minimum number of reflections per metre=zero\n")   //since rays travelling with alpha=0 suffer no internal reflection
//for rays travelling with alpha=alpha_m ,1 internal reflection takes place for a transversed distance of 2*L
N=1/(2*L)  //Maximum number of reflections per metre
disp("Maximum number of reflections per metre(in m^-1)=")
printf("N=%.0f",N)

//Answer varies as L is restricted to 2.45*10^-4 (m)  instead of 2.462*10^-4 (m)

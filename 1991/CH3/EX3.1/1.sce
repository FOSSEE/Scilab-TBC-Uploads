clc
clear
//calculation of angle of refraction
rj=(sind(6)/0.76)//from snells law
x=asind(rj)
printf("the refractive index of jelly is %3.3f deg",x)
// calculating angle of incidence
printf("\nsince angle of refraction and angle of incidence are alternate angles , angle of incidence is %3.3f deg",x)
//calculating angle of refraction
np=0.59/0.76 // according to relationship of media
jnp=sind(7.9)/0.78
rp=asind(jnp)
printf("\nthe angle of refraction  is %3.3f deg",rp)

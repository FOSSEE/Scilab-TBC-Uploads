//Example 3.12
// calculate the critical thickness.
d=5.2*10^-3       //m, diameter of copper wire
ri=d/2            //inner radius of insulation
kc=0.43           //W/m C, thermal conductivity of PVC
Tw=60             //C, temp. 0f wire
h=11.35           //W/m^2 C, film coefficient
To=21             //C, ambient temp.
//calculation
Ro=kc/h           //m,critical outer radius of insulation
t=Ro-ri
printf("the critical thickness is %f mm",t*10^3)

//Given that
Ym1 = 4.0*10^-3  //in meter
Ym2 = 3.0*10^-3  //in meter
phi1 = 0  //in rad
phi2 = %pi/3  //in rad

//Sample Problem 17-6
printf("**Sample Problem 17-6**\n")
//For horizontal component
Ymh = Ym1*cos(phi1) + Ym2*cos(phi2)
//For vertical component
Ymv = Ym1*sin(phi1) + Ym2*sin(phi2)
Ym = sqrt(Ymv^2 + Ymh^2)
beta = atan(Ymv/Ymh)
printf("The amplitude of the resultant wave is equal to %fmm\n", Ym*10^3)
printf("The phase constant for the wave is %frad\n", beta)
printf("The equation of wave is %f*sin(k*x - w*t + %frad)",Ym, beta)
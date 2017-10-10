clc
//
//
//

//Variable declaration
muclad=1.48   //Refractive index of claddings
mucore=1.5    //Refractive index of core

//Calculations
thetac=(180/%pi)*(asin(muclad/mucore))
fri=(mucore-muclad)/mucore
aa=(sqrt((mucore**2)-(muclad**2)))
NA=sin(aa)
//Result
printf("\n (a) The critical angle is :%2.2f degrees",thetac)
printf("\n (b) The Fractional refractive index is :%1.3f ",fri)

printf("\n (c) The Acceptance angle is :%1.3f Radians",aa)
printf("\n (d) The Numerical Apperture is :%1.3f ",NA)


clc
//Chapter3: Modulation
//Example3.13 page no 148
//Given
Pt=5e3//carrier power for 95% modulation
Ma=0.95
Pc=Pt/(1+((Ma^2)/2))//carrier power
Ma=0.2//average modulation by speech signal
Psb=(Ma^2)*Pc/2//the power n the sideband
Pout=Psb/2// because one of the side band is suppressed
mprintf('The power output is: %f W',Pout)

//Notations have been changed
//Calculations
x=-(25*125*0.5*125+25*100*0.5*25)/(25*125+25*100) //mm
y=(25*125*0.5*25+25*100*75)/5625 //mm 
Iy=(1/12)*25*125^3+25*125*(62.5-40.3)^2+(1/12)*100*25^3+100*25*(40.3-12.5)^2 //mm^4
Ix=Iy //mm^4 for L-section
//The second computation checks the first
Ixy=(125*25*22.2*27.8)+(100*25*(-27.8)*(-34.7)) //mm^4
//Mohr Circle analysis
Imax=Ix+Ixy //mm^4
Imin=Ix-Ixy //mm^4
//Result
clc
printf('The values of moment of inertia are\n Ix=%fmm^4,Iy=%fmm^4,Ixy=%fmm^4\n Imax=%fmm^4 and Imin=%fmm^4',Ix,Iy,Ixy,Imax,Imin)

clear
//
//
//

//Variable declaration
lamda1=4200*10**-10    //wavelength(m)
beta11=0.64*10**-2      //first fringe width(m)
beta12=0.46*10**-2      //second fringe width(m)

//Calculation
lamda2=lamda1*2*beta12/beta11    //wavelength of light source(m)

//Result
printf("\n wavelength of light source is %0.3f  angstron",lamda2*10**10)

clear
//
//
//

//Variable declaration 
lamda=1.1*10^-6;    //wavelength(m)
r=60/2*10^-6;     //radius(m)
NA=0.25;         //numerical aperture

//Calculations
V=2*%pi*r*NA/lamda;    
Nm=V^2/4;     //number of guided modes

//Result
printf("\n number of guided modes is %0.3f ",Nm)

clear
//
//
//

//Variable declaration    
dlamda=10^-4*10^-10;      //width(m)
lamda=6000*10^-10;      //wavelength(m)
c=3*10^8;         //velocity of light(m/sec)

//Calculations
delta_t=lamda^2/(2*%pi*c*dlamda);       //time required(second)

//Result
printf("\n time required is %0.1f *10^-8 second",delta_t*10^8)

clear
//
//
//

//Variable declaration    
delta_t=10^-8;       //life time(s)

//Calculations
deltav=1/(4*%pi*delta_t);       //minimum uncertainity in frequency(s-1)

//Result
printf("\n minimum uncertainity in frequency is %0.0f *10^6 s-1",deltav/10^6)

// Chapter 6_The pn junction
//Caption_Zero applied bias
//Ex_1//page 220
Na=10^18    //acceptor ion concentration
T=300   //temperature in kelvin
Nd=10^15
ni=1.5*(10^10)   //intrinsic ion concentration
Vbi=(0.0259)*log(Na*Nd/(ni^2))
printf('The built in potential barrier is %1.3f V',Vbi)
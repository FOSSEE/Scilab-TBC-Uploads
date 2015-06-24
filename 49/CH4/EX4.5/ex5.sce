//CHAPTER 4_ Motion and Dimensional Measurement
//Caption : Piezoelectric transducer
// Example 5// Page 207
g=15  //('enter the value constant g for the crystal=:')
A=%pi*((5*10^-3)^2)/4   //('enter the area of cross section of the crystal=:')
f=50  //('enter the frequency of sinusoidally varying pressure=:')
 eoer=15*10^-9  // for the crystal
 E=120 *10^9  // youngs modulus of elasticity
 t=.003   //('enter the thichness of the crystal=:')
 Kq=g*eoer*A*E/t;
 printf('Charge sensitivity is %fd mC/m \n',Kq)
 Ccr=eoer*A/t;
 Camp=2000*10^-12;
 Ccable=100*10^-12;
 C=Ccr+Camp+Ccable;
 Ramp=2000000   //('enter the input impedance of the amplifier')
 Req=Ramp;
 tou=Req*C;     // time constant
 // Let the amplitude ratio is given by EOP
 w=2*%pi*f;
 EOP=Kq*t*w*tou/(C*E*sqrt(1+(w*tou)^2))
 printf('The amplitude ratio is %fd mV/V\n',EOP)
 // let the phase lag be represented by phi
 phi=360*atan(1/(w*tou))/(2*%pi);
 printf(' The phase lag is %fd deg',phi);
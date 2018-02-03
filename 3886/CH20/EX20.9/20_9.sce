//Composite pulley
//refer fig. 20.7 (a) and (b)
//Let aA be acceleration of 4000 N block and aB that of 2000 N block,and alpha be the angular velocity of pulley, then
//aA=0.5*alpha
//aB=0.75*alpha
//Writing dynamic equilibrium equation for the two blocks and from kinetic equation of pulley
alpha=500/245.97  //rad/sec^2
TA=4000*(1-(0.5*2.033)/(9.81))  //N
TB=2000*(1+(0.75*2.033)/(9.81))  //N
printf("\nalpha=%.3f rad/sec^2\nTA=%.3f N\nTB=%.3f N",alpha,TA,TB)


mu_not=4D-7*%pi
N=400   //number of turns on the coil wound on iron ring
I=1.2  //current through the coil
AT=N*I
l=1  //mean flux path in ring in mtrs
H=AT/l
B=1.15  //flux Density
mu_r=B/(H*mu_not) 
mprintf("Rel permeability of iron ring mu_r=%d", round(mu_r)) 
//error in textbook answer

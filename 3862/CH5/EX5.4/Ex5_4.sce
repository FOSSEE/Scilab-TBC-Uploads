clear
//
uag=0.5   //coefficient of friction between block A and the plane
ubg=0.2   //coefficient of friction between block B and the plane
Wb=500.0  //weight of block B
Wa=1000.0  //weight of block A
//Considering equilibrium of block A,
//sum of all forces along the plane is 0
//N1=Wacoso ,Fr=uagN1
//sum of all forces perpendicaular to  the plane is 0
//T=uagWacoso-Wasino
//Considering equilibrium of block A,
//sum of all forces along the plane is 0
//N2=Wbcoso ,Fr=uagN2
//sum of all forces perpendicaular to  the plane is 0
//T=Wbsino-ubgwbsino
o=atan((uag*Wa+ubg*Wb)/(Wa+Wb))*180.0/3.14

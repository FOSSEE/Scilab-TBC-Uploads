//ques-34.19
//Calculating energy of light required to decompose 1g of ammonia
clc
w=200;//wavelength (in nm)
QE=0.14;//quantum efficiency (in molecule/photon)
m=1;//mass of ammonia given
n=m/17;//moles of ammonia given
q=(n/QE)*(2.859/w)*10^7;
q1=q*4.184;
printf("The energy of light required is %d cal or %d J.",q,q1);

clc
//Initialization of variables
T=273.2 //K
vw=1.0001 //cm^3 /g
vi=1.0907 //cm^3 /g
hf=79.7 //cal/g
P1=76 //cm
P2=4.6 //cm
//calculations
dT=T*(vw-vi)*(P2-P1)*13.6*980.7/(hf*4.184*10^7)
//results
printf("change in temperature = %.4f deg",dT)


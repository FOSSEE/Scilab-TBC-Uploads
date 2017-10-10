// Problem 16.7,Page no.370

clc;clear;
close;

W=270 //KN //Load 
t=14 //mm //thickness of plate
b=20 //cm //width of plate
d=20 //mm //diameter of rivet
sigma_s=70  //MPa //shear stress
sigma_b=190 //MPa //stress in bearing
sigma_t=110 //MPa //stress in tensile

//Calculation

S_1=1.75*%pi*4**-1*b**2*10**-4*sigma_s*10**6 //strength of one rivet in double shear
S_2=20*10**-3*t*10**-3*sigma_b*10**6

n=W*10**3*S_1**-1

//Adopt 7 rivets

//The plates may tear along section 1-1
W_1=(20-4)*10**-2*t*10**-3*sigma_t*10**6 //N //Permissible Load

//The plates may tear along section 2-2,at the same time shearing the 4 rivets along 1-1 
W_2=(20-2*2)*10**-2*t*10**-3*sigma_t*10**6+2*S_1 //N //Permissible Load

//The plates may tear along section 3-3,at the same time shearing the rivets along 1-1 and 2-2
W_3=(20-3*2)*10**-2*t*10**-3*sigma_t*10**6+4*S_1 //N //Permissible Load

W_s=7*S_1 //N //Load to shear all the rivets 
W_c=7*S_2 //N //Load to crush all the rivets

W_4=b*10**-2*t*10**-3*sigma_t*10**6 //N //Load carried by solid plate

rho=W_1*W_4**-1*100 //% //Efficiency of joint
 
//Result
printf("Efficiency of joint is %.2f %%",rho)

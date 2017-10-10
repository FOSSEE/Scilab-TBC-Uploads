//Ex no.17.3,Page no.380
clc;clear;close;

//Initilization of Variables

b=12 //cm //width of plate
S=1;t=1 //cm //thickness of plate
P=50 //KN //load
sigma_s=60 //MPa //shear stress

//Calculations (part-1)

//Under static Loading

//P=2**0.5*l*S*sigma_s

l=((P*10**3)*(2**0.5*S*sigma_s*10**-4*10**6)**-1) //cm 

//add 1.25 cm to start and stop weld run

L=l+1.25 //cm //length of weld

//Calculations (part-2)

//Under Fatigue load

//stress concentration factor for parallel fillet weld is 2.7

sigma_s_2=sigma_s*2.7**-1 //MPa //permissible shear stress

//P=2**0.5*l_2*S*sigma_s_2

l_2=((P*10**3)*(2**0.5*S*sigma_s_2*10**-4*10**6)**-1) //cm

//add 1.25 cm 

l_3=l_2+1.25 //cm //length of weld

//Result
printf("Length of weld Under static Loading is %.3f cm",L)
printf("\n Length of weld Under Ftigue Loading is %.3f cm",l_3)

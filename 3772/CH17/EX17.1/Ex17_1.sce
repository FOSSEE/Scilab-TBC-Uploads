//Ex no.17.1,Page no.379

clc;
clear;
close;
//Initilization of Variables

b=12 //cm //width of steel plates
t=1 //cm //thickness of steel plates
sigma=75 //MPa //stress

//Calculations

//The maximum Load which the plate can carry
P=b*t*10**-6*sigma*10**6 //N 

//Length of weld for static loading

//size of weld is equal to thickness of plate
S=t //cm

//P=2**0.5*l*S*sigma

//After substituting values and simplifying above equation, we get, 
l=((P)*(2**0.5*S*sigma)**-1) //cm

//add 1.25 to allow start and stop of weld run
L=l+1.25 //cm 

//Length of weld for Dynamic loading

//The stress concentration factor for transverse fillet weld is 1.5

sigma_2=sigma*1.5**-1 //MPa //Permissible tensile stress

//P=2**0.5*l_2*S*sigma_2 

//After substituting values and simplifying above equation, we get,
l_2=((P)*(2**0.5*S*sigma_2)**-1) //cm

//add 1.25 cm
l_3=l_2+1.25 //cm 

//Result
printf("Length of weld for static loading = %.2f cm",L)
printf("\n Length of weld for Dynamic loading = %.3f cm",l_3)

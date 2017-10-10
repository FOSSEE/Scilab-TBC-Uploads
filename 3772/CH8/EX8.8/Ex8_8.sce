// Problem 8.8,Page no.212

clc;clear;
close;

//Outer spring
n_1=10 //number of coils
D_1=3 //cm //Diameter of coil
d_1=3 //mm //diameter of wire
dell_1=2 //cm //deflection of spring

//Inner spring
n_2=8 //number of coils

G=80 //GPa //Modulus of rigidity

//Calculation

R_1=D_1*2**-1
P_1=G*10**9*dell_1*10**-2*(d_1*10**-3)**4*(64*(R_1*10**-2)**3*n_1)**-1 //Load carried outer spring for compression of 2 cm

P_2=100-P_1 //N //Load carried by inner spring
k_2=P_2*0.01**-1 //N/m //stiffness of inner spring

//D_2=D_1*10**-2-d_1*10**-3-2*dell_1*10**-2-d_2 //Diameter of inner spring
//Further simplifying above equation we get
//D_2=0.023-d_2

//Now from stiffness equation of inner spring
//k=G*d_2**4*(8*D_2**3*n_2)**-1
//Now substituting values and further simplifying we get
//d**4=(0.023-d)**3*312500**-1

//As d is small compared with 0.023,as a first appromixation
d_2_1=(0.023**3*312500**-1)**0.25 //m

//Second Approximation
d_2_2=((0.023-d_2_1)**3*312500**-1)**0.25 //m

//Final approximation
d_2_3=((0.023-d_2_2)**3*312500**-1)**0.25*100 //cm

//Result
printf("Stiffness of inner spring is %.2f",k_2);printf(" N/m")
printf("\n Wire Diameter of inner spring is %.3f cm",d_2_3)

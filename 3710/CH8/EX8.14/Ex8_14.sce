//Example 8.14, Page Number 404
//The Function fpround(dependency) is used to round a floating point number x to n decimal places
//Fiber Couple Losses
clc;

d1=200*(10**-6) //Core Diameter in meters
d2=250*(10**-6) //Core + Cladding Diameter in meters

d3=3*d2//Mixing rod diameter in meters

//Power Levels P1=(B*3.14*(3d2**2))/4 & P2=(B*3.14*(d1**2)/)/4 

//From equation 8.41
L=-10*log10((d1**2)/(d3**2)) //L is the Insertion Loss in dB
Le=-10*log10((7*(d1**2))/(d3**2)) //Le is the Excess loss in dB
L=fpround(L,1)
Le=fpround(Le,2)
mprintf("The Insertion loss is %.1f dB\n",L)
mprintf(" The Excess Loss is %d dB",Le)

//Example 8.13, Page Number 399
//The Function fpround(dependency) is used to round a floating point number x to n decimal places
//Transmission loss from lateral misalignment
clc;

l=0.1 //where l=D/2a and occurs due to lateral misalignment where D is the lateral displacement and a is the fiber core radius

//From equation 8.40
T=(2/%pi)*(acos(l)-l*(sqrt(1-(l**2))))
L=-10*log10(T) //L is the Transmission loss in dB
L=fpround(L,2)
mprintf("The Total Transmission loss is %.2f dB\n",L)

//Including Fresnel loss from the previous example
LT=L+0.33
mprintf(" The Total Transmission loss including Fresnel loss is %.2f dB",LT)

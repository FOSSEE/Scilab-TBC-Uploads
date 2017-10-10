//Chapter 3, Example 3.5, page 74
clc
//Initialisation
No=1                                          //index of refraction
N1=1.3*10**-7
h=20                                          //height

//Calculation
wc=asin(((4*No)/((4*No)+((h**2)*N1))))         //critical angle


//Results
printf("Critical angle = %f",wc)                    //answer is not written in textbook

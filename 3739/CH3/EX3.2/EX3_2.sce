//Chapter 3, Example 3.2, page 63
clc

//Initialisation
h=2                                 //Height in Km
T=277                               //Tempreture in Kelvin
p=716
e=2
        

//Calculation
er=1+(151.1/T)*(p+(4810*h/T))*10**-6      
n=er**(0.515)                         //refractive index of the air
N=(n-1)*10**6                       //refractivity number
 

//Results
printf("n = %.5f",n)
printf("\nN = %d",N)

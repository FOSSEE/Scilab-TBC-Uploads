clear
l = 50    //mm - The length of the beam 
b = 50    //mm - The width of the beam 
A = l*b   //mm2 - The area of the beam 
p = 8.33  //KN - The force applied on the beam 
stress_max = p*(10**3)/A  //MPa After cutting section A--b
printf("\n The maximum stress in the beam %0.3f MPa ",stress_max )

clear
//Given
dia = 400   //mm - The diameter of a pulley
E = 200    //GPa - Youngs modulus
t = 0.6     //mm - The thickness of band
c = t/2     //mm - The maximum stress is seen
//calculations

stress_max = E*c*(10**3)/(dia/2) //MPa - The maximum stress on the crossection occurs at the ends
printf("\n The maximum bending stress developed in the saw  %0.3f MPa",stress_max)
// answer varies from the book

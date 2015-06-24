// Variable declaration
a1 = 0.70
a2 = 0.75

// Calculation

a1 = 1-(1-a1)^3
a2 = 1-(1-a2)^2

riliability = (0.95)*(0.99)*(a1)*(a2)*(0.90)

// Result
printf ( "Riliability: %.3f",riliability)

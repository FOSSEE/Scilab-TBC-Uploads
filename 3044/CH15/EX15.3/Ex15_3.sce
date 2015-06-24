// Variable declaration
alpha = 0.05             // level of significance
x = [210,234,216,232,262,183,227,197,
           248,218,256,218,244,259,263,185,
           218,196,235,223,212,237,275,240,
           217,263,240,247,253,269,231,254,
           248,261,268,262,247,292,238,215]
n = 40          

// Calculation

Mean = mean(x)
s = 25.10
k = 2.126

// Result
printf ( "L = %d psi",Mean-k*s)

clc
v1 = 1 // Assumed
v2 = v1// Assumed 
v3 = v2 // Assumed
v4 = v2// Assumed
e = 0.56 // Degree of reaction
P = 1 // Dummy
T = 1200 // Reaction temperature in K
R = 8.3143 // Gas constant
x1 = (1-e)/2 // 
x2 = (1-e)/2
x3 = e/2 
x4 = e/2
K = (((x3^v3)*(x4^v4))/((x1^v1)*(x2^v2)))*P^(v3+v4-v1-v2) // Equilibrium constant
dG = -R*T*log(K) //Gibbs function change

printf("\n Example 16.3\n")
printf("\n Equilibrium constant is %f",K)
printf("\n Gibbs function change is %fJ/gmol",dG)
//The answers vary due to round off error


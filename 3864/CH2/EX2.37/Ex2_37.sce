clear
//
//

//Initilization of Variables

d=20 //mm //Diameter of bar
P=37.7*10**3 //N //Load
L=200 //mm //Guage Length 
dell=0.12 //mm //Extension
dell_d=0.0036 //mm //contraction in diameter

//Calculations

//Area of bar
A=%pi*4**-1*d**2

//Let s and dell_s be the Linear strain and Lateral strain
s=dell*L**-1
dell_s=dell_d*d**-1
mu=dell_s*s**-1 //Poissons ratio 

//dell=P*L*(A*E)**-1
E=P*L*(dell*A)**-1 //N/mm**2 //Modulus of Elasticity of bar

//Modulus of Rigidity
G=E*(2*(1+mu))**-1 //N/mm**2

//Bulk Modulus 
K=E*(3*(1-2*mu))**-1 //N/mm**2

//result
printf("\n Poissons ratio is %0.2f  ",mu)
printf("\n The Elastic constant are:E %0.2f  ",E)
printf("\n                         :G %0.2f  ",G)
printf("\n                         :K %0.2f  ",K)

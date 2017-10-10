
clear//

//Variable Declaration
delta=100 //Increase in the temperature in degreeF
Load=12000 //Load on the beam in lb
//Length in inch
Ls=2*12 //Steel
Lb=3*12 //Bronze
//Area in sq.in
As=0.75 //Steel
Ab=1.5 //Bronze
//Modulus of elasticity in psi
Es=29*10**6 //Steel
Eb=12*10**6 //Bronze
//Coefficient of thermal expansion in /degree C
alpha_s=6.5*10**-6 //Steel
alpha_b=10**-5 //Bronze

//Calculations
//Applying the Hookes Law and equilibrium we get two equations
a=([[Ls*(Es*As)**-1,-Lb*(Eb*Ab)**-1;2,1]])
b=([(alpha_b*delta*Lb-alpha_s*delta*Ls);Load])
y=linsolve(a,b)

//Stresses
sigma_st=-y(1)*As**-1 //Stress in steel in psi (T)
sigma_br=-y(2)*Ab**-1 //Stress in bronze in psi (C)

//Result
printf("\n The Stress in steel and bronze are as follows")
printf("\n %0.3f psi (T) and %0.3f psi(C)",sigma_st,sigma_br)


clear//

//Variable Declaration
P=10**6 //Force on the member in N
Es=200 //Modulus of elasticity of steel in GPa
Ec=14 //Modulus of elasticity concrete in GPa
As=900*10**-6 //Area of steel in m^2
Ac=0.3**2 //Area of concrete block in m^2

//Calculation
//Cross Sectional Areas
Ast=4*As //Cross Sectional Area in m^2 of Steel
Act=Ac-Ast //Cross Sectional Area of Concrete in m^2

//Applying equilibrium to the structure
//Using the ratio of stress and modulii of elasticity we obtain the following eq
sigma_ct=P/(((Es*Ec**-1)*Ast)+Act) //Stress in Concrete in Pa
sigma_st=sigma_ct*Es*Ec**-1 //Stress in Steel in Pa

//Result
printf("\n The stress in steel and concrete is as follows %0.1f MPa and %0.3f Mpa respectively",sigma_st*10**-6,sigma_ct*10**-6)

// Problem no 9.2,Page no.233

clc;clear;
close;


L=1.5 //m //Length of steelbar
b=2 //cm //bredth of steelbar
d=0.5 //cm //depth of steelbar
sigma=320 //MPa //Yield point
E=210 //GPa //modulus of Elasticity of steelbar

//Calculations

I_min=b*d**3*12**-1*10**-8 //m**4 //Moment of Inertia 
P=%pi**2*E*10**9*I_min*(L**2)**-1 //N //N //Crippling Load

//Let dell=Central Deflection

//M=P*dell //Max Bending moment
//After substituting value in above equation we get
//M=191.9*dell

A=b*d*10**-4 //m**2 //Area of steel bar
sigma_1=P*A**-1*10**-6 //Mpa //Direct stress

Z=b*d**3*10**-6  //Section modulus 
//sigma_2=M*Z**-1 //N/m**2 //Bending stress
//After substituting value in above equation we get
//sigma_2=dell*2302.8*10**6 //N/m**2 

//sigma=sigma_1+sigma_2
//Now substituting value of Bending stress and direct stress in above equation we get

//320*10**6=1.919*10**6+2302.8*10**6*dell
dell=((320*10**6-1.919*10**6)*(2302.8*10**6)**-1)*10**2 //cm //Central Deflection

//Result
printf("Maximum Central Deflection is %.2f",dell);printf(" cm")

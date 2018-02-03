clear
//

//Initilization of Variables

P=200*10**3 //N //Load
A_a=1000 //mm**2 //Area of Aluminium
A_s=800 //mm**2 //Area of steel
E_a=1*10**5 //N/mm**2 //Modulus of Elasticity of Aluminium
E_s=2*10**5 //N/mm**2 //Modulus of ELasticity of steel
sigma_a1=65 //N/mm**2 //stress in aluminium
sigma_s1=150 //N/mm**2 //Stress in steel

//Calculations   

//Let P_a and P_s be the force in aluminium and steel pillar respectively

//Now,sum of forces in Vertical direction we get
//2*P_a+P_s=200  .........................................(1)

//By compatibility Equation dell_l_s=dell_l_a we get
//P_s=1.28*P_a  ..........................................(2)

//Now substituting value of P_s in Equation 1 we get
P_a=200*3.28**-1 //KN
P_s=200-2*P_a   //KN

//Stress developed in aluminium
sigma_a=P_a*10**3*A_a**-1 //N/mm**2 

//Stress developed in steel
sigma_s=P_s*10**3*A_s**-1 //N/mm**2 

//Part-2

//Let sigma_a1 and sigma_s1 be the stresses in Aluminium and steel due to Additional LOad

P_a1=sigma_a1*A_a //Load carrying capacity of aluminium
P_s1=1.28*P_a1

//Total Load carrying capacity 
P1=2*P_a1+P_s1 //N 

P_s2=sigma_s1*A_s //Load carrying capacity of steel
P_a2=P_s2*1.28**-1

//Total Load carrying capacity
P2=2*P_a2+P_s2

//Additional Load
P3=P1-P

//Result
printf("\n Stresses Developed in Each Pillar is:sigma_a %0.2f  N/mm**2",sigma_a)
printf("\n                                     :sigma_s %0.2f  N/mm**2",sigma_s)
printf("\n Additional Load taken by pillars is %0.2f  N",P3)

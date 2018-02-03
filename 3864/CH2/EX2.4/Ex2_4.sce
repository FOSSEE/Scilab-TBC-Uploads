clear
//
//

//Initilization of Variables

d=25 //mm //diameter of steel
d2=18 //mm //Diameter at neck
L=200 //mm //length of stee
P=80*10**3 //KN //Load  
P1=160*10**3 //N //Load at Elastic Limit
P2=180*10**3 //N //Max Load
L1=56 //mm //Total Extension
dell_l=0.16 //mm //Extension


//Calculations

A=%pi*d**2*4**-1 //Area of steel //mm**2

p=P1*A**-1 //Stress at Elastic Limit //N/mm**2
Y=P*L*(A*dell_l)**-1 //Modulus of elasticity

//Let % elongation be x
x=L1*L**-1*100 

//Percentage reduction in area
//Let % A be a
a=((%pi*4**-1*d**2)-(%pi*4**-1*d2**2))*(%pi*4**-1*d**2)**-1*100

//Ultimate tensile stress
sigma=P2*A**-1 //N/mm**2

//result
printf("\n Stress at Elastic limit is %0.2f  N/mm**2",p)
printf("\n Youngs Modulus is %0.2f  N/mm**2",Y)
printf("\n Percentage Elongation is %0.2f  ",a)
printf("\n Percentage reduction in area is %0.2f  ",P2)
printf("\n Ultimate tensile stress %0.2f  N/mm**2",sigma)

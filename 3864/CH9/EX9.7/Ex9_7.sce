clear
//
//

//Initilization of Variables

//Let X=(P*A**-1) //Average Stress at Failure 
Lamda_1=70 //Slenderness Ratio
Lamda_2=170 //Slenderness Ratio
X1=200 //N/mm**2 
X2=69 //N/mm**2 

//Rectangular section
b=60 //mm //width
t=20 //mm //Thickness

L=1250 //mm //Length of strut
FOS=4 //Factor of safety

//Calculations

//Slenderness ratio
//Lamda=L*k**-1

//The Rankine's Formula for strut
//P=sigma*A*(1+a*(L*k**-1)**-1

//From test result 1,
//After sub values in above equation we get and further simplifying we get
//sigma_1=200+980000*a   ...................(1)

//From test result 2,
//After sub values in above equation we get and further simplifying we get
//sigma_2=69+1994100*a   ...................(2)

//Substituting it in equation (1) we get
a=131*1014100**-1   

//Substituting a in equation 1
sigma_1=200+980000*a //N/mm**2

//Effective Length 
l=1*2**-1*L //mm

//Least of M.I
I=1*12**-1*b*t**3 //mm**4

//Area 
A=b*t //mm**2 

k=(I*A**-1)**0.5

//Slenderness ratio
Lamda=l*k**-1

//From Rankine's Ratio
P=sigma_1*A*(1+a*(Lamda)**2)**-1

//Safe Load
S=P*(FOS)**-1*10**-3 //N

//Result
printf("\n Constant in the Formula is:a       %0.6f  ",a)
printf("\n                           :sigma_1 %0.2f  ",sigma_1)
printf("\n Safe Load is %0.2f  KN",S)

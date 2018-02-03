clear
//

//Initilization of Variables

L=800 //mm //Span
n=5 //number of leaves
b=60 //mm //Width
t=10 //mm //thickness
sigma=250 //N/mm**2 //Stress

//Calculations

//section Modulus
Z=n*6**-1*b*t**2 //mm**3

//from the relation
//sigma*Z=M   ...................(1)
//M=P*L*4**-1
//sub values of M in equation 1 we get
P=sigma*Z*4*L**-1*10**-3 //KN //Load

//Length of Leaves
L1=0.2*L //mm
L2=0.4*L //mm
L3=0.6*L //mm
L4=0.8*L //mm
L5=L //mm

//Result
printf("\n Max Load it can take is %0.2f  KN",P)
printf("\n Length of leaves:L1 %0.2f  mm",L1)
printf("\n                 :L2 %0.2f  mm",L2)

clear
//
//

dell=0.25 //mm //Instantaneous Extension

//Bar-A
b1=25 //mm //width of bar
D1=500 //mm //Depth of bar

//Bar-B
b2_1=25 //mm //width of upper bar
b2_2=15 //mm //Width of Lower Bar
L2=200 //mm //Length  of upper bar
L1=300 //mm //Length of Lower bar

E=2*10**5 //N/mm**2 //Youngs Modulus of bar

//Calculations

//Strain
e=dell*D1**-1 

//Load
p=e*E

//Area of bar-A
A=%pi*4**-1*25**2

//Volume of bar-A
V=A*D1

//Let E1 be the Energy of Blow
//Energy of Blow
E1=p**2*(E)**-1*V

//Let p2 be the Max stress in bar B When this blow is applied.
//the max stress occurs in the 15mm dia. portion,Hence, the stress in 25 mm dia.portion is
//p2*%pi*4**-1*b2_2**2*(%pi*4**-1*b2_2**2=0.36*p

//Strain Energy of bar B
//E2=p**2*(2*E)**-1*v1+1*(2*E)**-1*(0.36*p2)**2*v2
//After substituting values and Further substituting values we get
//E2=0.1643445*p2**2

//Equating it to Energy of applied blow,we get
p2=(12271.846*0.1643445**-1)**0.5

//Stress in top portion
sigma=0.36*p2

//Extension in Bar-1
dell_1=p2*E**-1*L1

//Extension in Bar-2
dell_2=0.36*p2*E**-1*L2

//Extension of bar
dell_3=dell_1+dell_2

//Result
printf("\n Instantaneous Max stress is %0.2f  N/mm**2",sigma)
printf("\n extension in Bar is %0.2f  mm",dell_3)

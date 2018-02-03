clear
//
//

//Initilization of Variables

L=2000 //mm //Length
d=200 //mm // diameter
t=10 //mm //Thickness
dell_V=25000 //mm**3 //Additional volume
E=2*10**5 //n/mm**2 //Modulus of elasticity
mu=0.3 //Poissons ratio

//Calculations

//Let p be the pressure developed

//Circumferential Stress

//f1=p*d*(2*t)**-1 //N/mm**2
//After sub values and further simplifying
//f1=10*p

//f1=p*d*(4*t)**-1 //N/mm**2
//After sub values and further simplifying
//f1=5*p

//Diameterical strain = Circumferential stress
//Let X=dell_d*d**-1     ................................(1)
//X=e1=(f1-mu*f2)*E**-1 
//After sub values and further simplifying
//e1=8.5*p*E**-1

//Longitudinal strain
//Let Y=dell_L*L**-1    ......................................(2)
//Y=e2=(f2-mu*f1)*E**-1 
//After sub values and further simplifying
//e2=2*p*E**-1

//Volumetric strain
//Let X=dell_V*V**-1    
//X=2*e1+e2
//After sub values and further simplifying
//X=19*p*E**-1
//After further simplifying we get
p=dell_V*(%pi*4**-1*d**2*L)**-1*E*19**-1 //N/mm**2

//Hoop Stress
f1=p*d*(2*t)**-1

//Sub value of X in equation 1 we get
dell_d=8.5*p*E**-1*d

//Sub value of Y in equation 2 we get
dell_L=2*p*E**-1*L

//Result
printf("\n Pressure Developed is %0.2f  N/mm**2",p)
printf("\n Hoop stress Developed is %0.2f  N/mm**2",f1)
printf("\n Change in diameter is %0.2f  mm",dell_d)
printf("\n Change in Length is %0.2f  mm",dell_L)

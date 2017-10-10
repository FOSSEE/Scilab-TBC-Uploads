// Problem no 15.7,Page no.355

clc;clear;
close;

L=0.9 //m //Length of cyclinder
D=0.4 //m //Diameter 
t=0.006 //m //thickness
p=5*10**6 //Pa //Pressure
E=100*10**9
m=3 //Poissoin's ratio
k=2.6*10**9 //Pa //Bulk modulus

//Calculations

//Let X=dV_1*V_1**-1
X=p*(0.4-2*0.006)*(2*t*E)**-1*(5*2**-1-2*m**-1) //Volumetric strain
dV_1=X*%pi*4**-1*0.388**2*L //cm**3 //Increase in volume of cyclinder
V_1=%pi*4**-1*0.388**2*L //VOlume
dV_2=p*k**-1*V_1 //DEcrease in volume of oil due to increase in pressure

dV=(dV_1+dV_2)*10**6 //Resultant additional space 

//Result
printf("Additional quantity of oil to be pumped is %.2f",dV);printf(" cm**3")

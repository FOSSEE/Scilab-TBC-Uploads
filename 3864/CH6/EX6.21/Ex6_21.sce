clear
//
//

//Initilization of Variables

G=80*10**3 //N/mm**2 
P=1*10**9 //N-mm/sec //Power
n=300 
d1=150 //mm //Outer Diameter
d2=120 //mm //Inner Diameter
L=2000 //mm //Length of circular shaft

//Calculations

T=P*60*(2*%pi*n)**-1 //N-mm

//Polar Modulus 
J=%pi*32**-1*(d1**4-d2**4) //mm**4

q_s=T*J**-1*(d1*2**-1) //N/mm**2 


//Strain ENergy
U=q_s**2*(4*G)**-1*%pi*4**-1*(d1**2-d2**2)*L

//Result
printf("\n Max shear stress is %0.2f  N/mm**2",q_s)
printf("\n Strain Energy stored in the shaft is %0.2f  N-mm",U)

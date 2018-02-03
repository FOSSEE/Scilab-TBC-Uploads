clear
//
//

//Initilization of Variables

G=80*10**3 //N/mm**2 //Modulus of rigidity
q_s=80 //N/mm**2 //Max sheare stress
P=736*10**6 //N-mm/sec //Power transmitted
n=200

//Calculations

T=P*60*(2*%pi*n)**-1 //N-mm //Torsional moment

//Now From consideration of angle of twist
theta=%pi*180**-1
//L=15*d

d=(T*32*180*15*(%pi**2*G)**-1)**0.33333

//Now corresponding stress at the surface is
q_s2=T*32*d*(%pi*2*d**4)**-1

//Result
printf("\n Max diameter required is %0.2f  mm",d)
printf("\n Corresponding shear stress is %0.2f  N/mm**2",q_s2)

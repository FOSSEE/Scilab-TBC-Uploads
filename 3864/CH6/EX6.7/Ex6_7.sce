clear
//
//

//Initilization of Variables

P=3750*10**6 //N-mm/sec
n=240 //Rpm
q_s=160 //N/mm**2 //Max shear stress

//Calculations

//d2=0.8*d2 //mm //Internal Diameter of shaft

//J=%pi*32**-1*(d1**4-d2**4) //mm**4 //Polar modulus
//After substituting value in above Equation we get
//J=0.05796*d1**4

T=P*60*(2*%pi*n)**-1 //N-mm //Torsional moment

//Now from Torsion Formula
//T*J**-1=q_s*R**-1    ......................................(1)

//But R=d1*2**-1 

//Now substituting value of R and J in Equation (1) we get
d1=(T*(0.05796*q_s*2)**-1)**0.33333

d2=d1*0.8

//Result
printf("\n The size of the Shaft is:d1 %0.3f  mm",d1)
printf("\n                         :d2 %0.3f  mm",d2)

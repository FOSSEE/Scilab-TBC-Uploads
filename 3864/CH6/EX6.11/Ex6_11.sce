clear
//
//

//Initilization of Variables

P=250*10**6 //N-mm/sec //Power transmitted
n=100 //rpm
q_s=75 //N/mm**2 //Shear stress

//Calculations

//From Equation of Power we have
T=P*60*(2*%pi*n)**-1 //N-mm //Torsional moment

//Now from torsional moment equation we have
//T=j*q_s*(d/2**-1)**-1
//After substituting values in above equation and further simplifying we get
//T=%pi*16**-1**d**3*q_s
d=(T*16*(%pi*q_s)**-1)**0.3333 //mm //Diameter of solid shaft

//PArt-2

//Let d1 and d2 be the outer and inner diameter of hollow shaft
//d2=0.6*d1

//Again from torsional moment equation we have
//T=%pi*32**-1*(d1**4-d2**4)*q_s*(d1/2)**-1
d1=(T*16*(%pi*(1-0.6**4)*q_s)**-1)**0.33333
d2=0.6*d1

//Cross sectional area of solid shaft
A1=%pi*4**-1*d**2 //mm**2

//cross sectional area of hollow shaft
A2=%pi*4**-1*(d1**2-d2**2)

//Now percentage saving in weight
//Let W be the percentage saving in weight
W=(A1-A2)*100*A1**-1

//Result
printf("\n Size of shaft is:solid shaft:d %0.3f  mm",d)
printf("\n                :Hollow shaft:d1 %0.3f  mm",d1)
printf("\n                :            :d2 %0.3f  mm",d2)

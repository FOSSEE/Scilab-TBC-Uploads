clear
//
//

//Initilization of Variables

m=5*10**5 //Wagon Weighing
v=18*1000*36000**-1 
d=300 //mm //Diameter of Beffer springs
n=18 //no.of turns
G=80*10**3 //N/mm**2
dell=225
R=100 //mm //Mean Radius

//Calculations

//Energy of Wagon
E=m*v**2*(9.81*2)**-1 //N-mm

//Load applied
W=dell*G*d**4*(64*R**3*n)**-1 //N 

//Energy each spring can absorb is
E2=W*dell*2**-1 //N-mm

//No.of springs required to absorb energy of Wagon
n2=E*E2**-1 *10**7

//Result
printf("\n No.of springs Required for Buffer is %0.2f  ",n2)

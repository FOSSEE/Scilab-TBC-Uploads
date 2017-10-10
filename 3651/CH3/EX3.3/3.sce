//Variable declaration
a=(2*2.82*10**-10)
delta_Hs=1.971*1.6*10**-19
k=1.38*10**-23
T=300
e=2.718281
//Calculations
V=a**3                           //Volume of unit cell of NaCl
N=4/V                            //Total number of ion pairs
n=N*e**-(delta_Hs/(2*k*T))  

//Result
printf('Volume of unit cell of NaCl =%0.3f *10**-28 m**3 \n',(V*10**28))
printf('Total number of ion pairs N =%0.3f *10**28\n',(N/10**28))
printf('The concentration of Schottky defects per m**3 at 300K =%0.3f *10**11\n',(n/10**11))

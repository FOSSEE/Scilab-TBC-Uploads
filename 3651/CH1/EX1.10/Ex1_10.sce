//variable declaration
n=4     
M=58.5                  //Molecular wt. of NaCl
N=6.02*10**26           //Avagadro number
rho=2180                //density

//Calculations
a=((n*M)/(N*rho))**(1/3)    
s=a/2

//Result
printf('a=%0.3f*10**-9 metre\n",(a/10**-9))
printf('spacing between the nearest neighbouring ions =%0.3f nm",(s/10**-9))

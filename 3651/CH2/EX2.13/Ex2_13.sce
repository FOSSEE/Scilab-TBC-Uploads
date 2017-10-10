
//Variable declaration
n=4
A=107.87
rho=10500
N=6.02*10**26
h=1;
k=1;
l=1;
H=6.625*10**-34
e=1.6*10**-19
theta=(19+(12/60))*%pi/180
C=3*10**8
//Calculations
a=((n*A)/(rho*N))**(1/3)*10**10
d=a/sqrt(h**2+k**2+l**2)
lamda=2*d*sin(theta)
E=(H*C)/(lamda*10**-10*e)

//Result
printf('a =%0.3f Angstroms \n',(a))
printf('d =%0.3f Angstroms\n',(d))
printf('lamda =%0.3f Angstroms\n',(lamda))
printf('E =%0.3f *10**3 eV\n',(E/10**3))

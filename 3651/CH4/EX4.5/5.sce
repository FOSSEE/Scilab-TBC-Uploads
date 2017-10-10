//Variable declarations
m=9.1*10**-31
h=6.626*10**-34
Ef=3.1
Ef1=Ef+0.02
e=1.6*10**-19
//Calculations

	N=integrate('%pi*((8*m)**(3/2))*(E**(1/2)*e**(3/2))/(2*(h**3))','E',Ef,Ef1)

//Result
printf('N =%0.3f  *10**26 states \n ',(N*10**-26))

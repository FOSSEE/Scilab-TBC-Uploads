//Variable declaration
A=6.022*10**23     //avagadro's number(/m^3)
d=2.7*10**6        //density of aluminium conductor(g/m^3)
a=26.98            // atomic weight aluminium conductor(g/g-atom)
D=10**4.           //current density(A/m^2)
e=1.6*10**-19      //electronic charge(C)

//Calculations
//Part a
n=A*d/a            //number of atoms(n/m^3)

//Part b
u=D/(n*e)          //drift velocity (m/s)

//Results
printf ( "number of atoms per cubic meter is %.3f * 10**28/m^3",n/10**28)
printf ( "drift velocity is %.2e m/s",u)

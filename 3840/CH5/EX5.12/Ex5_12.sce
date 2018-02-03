clear
//
//
//

//Variable declaration
D=8.92*10**3     //density(kg/m**3)
w=63.5           //atomic weight
Na=6.02*10**26   //avagadro number
e=1.6*10**-19    //charge(c)
I=100            //current(A)
A=10*10**-6      //area(m**2)
n=1

//Calculation
J=I/A            //current density(amp/m**2)
n=n*Na*D/w
vd=J/(n*e)       //drift velocity(m/s)

//Result

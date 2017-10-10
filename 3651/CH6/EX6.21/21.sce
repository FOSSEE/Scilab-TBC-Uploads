
//Variable declaration
H0=6.5*10**4           //(ampere/metre)
T=4.2                  //K
Tc=7.18                //K
r=0.5*10**-3

//Calculations
Hc=H0*(1-(T/Tc)**2)
Ic=(2*%pi*r)*Hc
A=%pi*r**2
Jc=Ic/A                //Critical current density

//Result
printf('Hc = %0.3f       *10**4 \n',(Hc/10**4))
printf('Critical current density,Jc = %0.3f  *10**8 ampere/metre**2      \n',(Jc/10**8))
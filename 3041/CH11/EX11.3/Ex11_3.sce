

//Variable declaration
T1=1200.                         //temperature(k)
T2=1000.                         //temperature(k)
Ww=1.2*10**5                     //work function(eV)
k=8.62
Ie1=200                         //emission current density
T3=1500.                        //temperature(k)

//Calculations
Ie2=Ie1*(T2/T1)**2*exp(-(Ww/k)*((1/T2)-(1/T1)))             //current density(mA/cm^2) at 1000k
Ie3=Ie1*(T3/T1)**2*exp(-(Ww/k)*((1/T3)-(1/T1)))             //current density(mA/cm^2) at 1000k

//Results
printf ("current density at 1000 k is %.2f mA/cm^2",Ie2)
printf ("current density at 1500 k is %.2f mA/cm^2",Ie3)

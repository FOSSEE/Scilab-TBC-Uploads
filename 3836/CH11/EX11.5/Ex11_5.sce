clear
//Initialisation
fsd1=50*10**-3                //full scale deflection of ammeter in Ampere
fsd2=1*10**-3                 //full scale deflection of moving coil meter in Ampere
Rm=25                         //resistance of moving coil meter in Ohms

//Calculation
Rsm=fsd1*fsd2**-1             //sensitivity factor
Rsh=Rm*49**-1                 //shunt resistor

//Result
printf("\n Therefore, Resistor = %d mOhm\n",round(Rsh*10**3))


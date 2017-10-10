clear
//Initialisation
fsd1=50                       //full scale deflection of voltmeter in Volts
fsd2=1*10**-3                 //full scale deflection of moving coil meter in Ampere
Rm=25                         //resistance of moving coil meter in Ohms

//Calculation
Rsm=fsd1*fsd2**-1
Rse=Rsm-Rm

//Result
printf("\n Rse = %.3f KOhm\n",Rse*10**-3)

printf("\n Therefore, Resistor ~ %d KOhm\n",round(Rse*10**-3))


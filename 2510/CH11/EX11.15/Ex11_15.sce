//Variable declaration:
//From example 11.14:
Qc = 15.0                       //Convection heat transfer coefficient (W/m^2.K)
hr = 7.2                        //Radiation heat transfer coefficient (W/m^2.K)

//Calculation:
X = hr/(Qc+hr)*100.0            //Percent heat transfer by radiation (%)

//Result:
printf("The percent heat transfer by radiation is : %.1f %%.",X)

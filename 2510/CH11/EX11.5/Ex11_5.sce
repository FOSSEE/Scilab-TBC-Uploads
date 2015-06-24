//Variable declaration:
T1 = 1500.0+460.0                   //Absolute temperature 1 (°R)
T2 = 1000.0+460.0                   //Absolute temperature 2 (°R)

//Calculation:
X = T1**4/T2**4                     //Ratio of quantity of heat transferred
x = 100*(T1**4-T2**4)/T2**4         //Percentage increase in heat transfer (%)

//Result:
printf("The ratio of the quantity/rate of heat transferred is : %.2f .",X)
printf("The percentage increase in heat transfer is : %.0f %%",x)

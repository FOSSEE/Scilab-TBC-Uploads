clc
//initialization of varaibles
Pg=0.4298 //steam tables psi
phi=0.5
P=14.7 //psi
//calculations
pw=phi*Pg
Pa=P-pw
gamma=0.622*pw/Pa
T=55 //F from dew point tables  
//results
printf("Specific humidity = %.5f lb water/lb dry air",gamma)
printf("\n Dew temperature = %d F",T)

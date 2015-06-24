//Problem 5.11:

//initializing the variables:
wr = 5; // in ton/hr
pcl = 0.02
x = 2000
MWHCl = 36.5
MWCl = 35.5
y = 0.99

//calculation:
Clfeed = wr*pcl*x
HCl = Clfeed*MWHCl/MWCl
maxrate = HCl*(1-y)

printf("\n\nResult\n\n")
printf("\n maximum permissible mass emission rate of HCl = %.2f lb HCl/h",maxrate)
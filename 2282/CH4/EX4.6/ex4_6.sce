// Example 4.6, page no-134
clear
clc

p=3600       //Power required
t=1.2        //worst case eclipse period
c=90         //capacity of each cell in Ah
v=1.3        //voltage of each cell in V
d=0.8        // Depth of discharge
e=0.95       //Discharge efficiency
E_sp=60      //specific energy specification of the battery

energy=p*t
n=energy/(c*v*d*e)
E_b=energy/(d*e)
m=E_b/E_sp
printf("No of cells, n= %.0f cells\n Energy required to be stored in the battery system is %.1f Wh\n Mass of battery system = %.2f kg",n,E_b,m)

clc
//initialization of varaibles
p=500 //psia
V2=0.9278 //cu ft
V1=0.0197 //cu ft
h2=1204.4 //B/lb
h1=449.4 //B/lb
//calculations
W=p*(V2-V1)*144
du=h2-h1-144*p*(V2-V1)/778
du2=h2-h1-W/778
//results
printf("Change in internal energy = %.1f Btu",du)
printf("\n Method 2, Internal energy change = %.1f Btu",du2)

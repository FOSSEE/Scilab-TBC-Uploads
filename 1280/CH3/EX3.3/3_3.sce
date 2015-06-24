clc
//initialisation of variables
W= 7200 //lb
V= 120 //ft^3
W1= 3600 //lb
V1= 50 //m^3
W2= 500 //dyn
V2= 7000 //cm^3
//CALCULATIONS
s= W/V
s1= W1/V1
s2= W2/V2
//RESULTS
printf ('specific weight = %.f lbs/ft^3',s)
printf ('\n specific weight = %.f N/m^3',s1)
printf ('\n specific weight = %.4f dyn/cm^3',s2)

clc
//initialization of variables
P1=500 //lb/in^2
T1=800 //F
//calculations
disp("From steam tables,")
ht1=69.7
ht3=1412.1
s3=1.6571
ht4=1175
Pt4=53 
ht5=1430
s5=1.917
ht6=1070
X6=0.966
Wsum=778*(ht3-ht4+ht5-ht6)
Qsum=ht3-ht1+ht5-ht4
eta=Wsum/(778*Qsum)
//results
printf("Specific work  = %d ft-lb/lbm",Wsum)
printf("\n Thermal efficiency = %.3f ",eta)

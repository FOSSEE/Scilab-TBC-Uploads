//Ex11_5 Pg-565
clc

Vin=5 //input voltage
Vp=Vin*sqrt(2) //peak voltage
printf("The peak value(maximum amplication) of input signal \n")
printf("                            = %.2f V",Vp)

Vin_pp=2*Vp //peak-to-peak value of input voltage
printf("\n Peak-to-peak value of input voltage \n")
printf("                            = %.2f V",Vin_pp)

Vbg=-1*(Vp-0.7) //base to ground voltage 0.7 is the voltage drop
printf("\n Base to ground voltage = %.2f",Vbg)

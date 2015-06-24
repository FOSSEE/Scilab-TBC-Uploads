clear all; clc;

disp("The specific speeds for all three options can be calculated")

N_sa=3600*(500^0.5)/(350^0.75)
printf("Nsa= %0.0f rpm*(gpm^0.5)/(ft^0.75)",N_sa)

N_sb=4320*(500^0.5)/(350^0.75)
printf("\nNsb= %0.0f ",N_sb)

N_sc=3600*((500^0.5)/(175^0.75))
printf("\nNsc= %0.0f",N_sc)

disp("From figures 4.20 and 4.36, we oobtain Effa=0.75, Dsa=1.7,Effb=0.78,Dsb=1.4,Effc=0.80,Dsc=1.31")

D_sa=1.7
Q=500
H=350
D_a=D_sa*(Q^0.5)/(H^0.25)
printf("\nDa=Dsa*(Q^0.5)/(H^0.25)= %0.1f in",D_a)

D_sb=1.4
D_b=D_sb*(Q^0.5)/(H^0.25)
printf("\nDb= %0.1f in",D_b)

D_sc=1.1
D_c=D_sc*(Q^0.5)/(H^0.25)
printf("\nDc= %0.1f in",D_c)//for Dsc=1.1 the value determined is correct. The value of Dc given in the book is incorrect.

Q=500*0.00223//conversion from gpm to cubic ft/s
//let x=rho*g
x=62.4
P_h=Q*x*H
printf("\nThe output hydraulic power is equal to %0.0f ft-lbf/s = 44.3hp=33kW",P_h)

P_a=33/(0.75*0.9)
printf("\nThe power required for option a= %0.1f kW",P_a)

P_b=33/(0.78*0.95*0.9)
printf("\nThe power required for option b= %0.1f kW",P_b)

P_c=33/(0.80*0.9)
printf("\nThe power required for option c= %0.1f kW",P_c)






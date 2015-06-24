clc
clear 
printf("example 4.14 page number 151\n\n")

//to find the discharge pressure
d=0.025     //in m
u=3        //in m/s
density=894   //in kg/m3
viscosity=6.2*10^4     //in Pa-s

Re=(u*d*density)/viscosity;
f=0.0045;
L=50;

delta_P=2*f*density*u^2*(L/d)
printf("frictional head loss = %f kPa",delta_P/1000)

required_P=25*density*9.8;
total_head=delta_P+required_P;
printf("\n\ntotal pressure head = %f bar",total_head/10^5)

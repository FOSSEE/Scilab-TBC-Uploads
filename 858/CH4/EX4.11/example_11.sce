clc
clear 
printf("example 4.11 page number 142\n\n")

//to find the pressure

u1=0;   //in m/s
ws=0;
P1=0.7*10^5    //in Pa
P3=0
density=1000   //in kg/m3

u3=((2*(P1-P3))/density)^0.5;
printf("u3 = %f m/s",u3)

ratio_area=0.5;
u2=u3/ratio_area;
printf("\n\nu2 = %f m/s",u2)

//applying bernoulli's equation
P2=1.7*10^5-((density*u2^2)/2)
printf("\n\nP2 = %f Pa",P2)
printf("\nthis flow is physically unreal")

// Ex 22 Page 363

clc;clear;close;
// Given
Ebb=300;//V
Ibb=20;//A
Emm=150;//V
Po=4.5*10**3;//W

m=Emm/Ebb;//modulation index
Pbb=Ebb*Ibb
eta=Po/Pbb*100;//%
P=Po*(1+m**2/2);//W
Pdo=Pbb-Po;//W
Pd=Pdo*(1+m**2/2);//W
printf("modulation index = %.1f",m)
printf("\n carrier power under modulated condition = %0.2f kW",P/1000)
printf("\n plate circuit efficiency = %.f percent",eta)
printf("\n plate dissipation under unmodulated condition = %.1f kW",Pdo/1000)
printf("\n plate dissipation under modulated condition = %.2f kW",Pd/1000)

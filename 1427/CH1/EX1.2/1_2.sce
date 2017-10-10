//ques-1.2
//Calculating hardness in three samples
clc
A=168;//mass of MgCO3/L (in mg)
B1=820;//mass of Calcium Nitrate (in mg)
B2=2;//mass of Si/L (in mg)
C1=20;//mass of Potassium nitrate/500mL (in g)
C2=2;//mass of CaCO3/500mL (in g)
m1=(A/84)*100;//CaCO3 equivalent of A (in mg/L)
m2=(B1/164)*100;//CaCO3 equivalent of B1 (in mg/L)
m3=2*(1000/500)*1000*(100/100);//CaCO3 equivalent of C1 (in mg/L)
printf("The hardness of sample A, B and C in ppm are %d, %d and %d\n",m1,m2,m3);
//1 ppm = 0.07 grains/gallon
printf(" and hardness in grains/gallon are %d, %d and %d respectively.",m1*0.07,m2*0.07,m3*0.07);

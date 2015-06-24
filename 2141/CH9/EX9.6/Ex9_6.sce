
clc
//initialisation of variables
h1=77.271
s1=0.16888
p2=132.86
h2=90.306
Wc=h2-h1
h4=31.100
r=200//lbm/hr
T=12000//Btu
//CALCULATIONS
qL=h1-h4//Btu/lbm
beta=qL/Wc //Btu/lbm
Capacity=qL*r/T//tons
//RESULTS
printf('The coefficient of performance and the capacity of the plant in tons =%f tons',Capacity)

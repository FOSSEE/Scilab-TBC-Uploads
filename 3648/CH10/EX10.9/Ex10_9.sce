//Example 10_9
clc();
clear;
//To find the pressure after the car has been driven at high speed
t2=308    //Units in K
t1=273    //Units in K
p2_p1=(t2)/t1     //In terms of P1
P1=190         //Units in K Pa  
P2=101            //Units in K Pa  
P2=p2_p1*(P1+P2)    //Units in K Pa 
printf("The Final pressure is P2=%d K Pa",round(P2)) 
//In text book the answer is printed wrong as P2=329 K Pa but the correct answer is 328 K Pa 

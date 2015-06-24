//Chapter 7
//Example 7.2
//page 248
//To find the saving in fuel cost by optimal scheduling
clear;clc;

//Example reveals that for optimal load sharing units 1&2 has to take up 50MW and 80MW respectively
//If each unit supplies 65MW,increase in cost for units 1&2 are

Increase1=integrate('0.2*Pg1+40','Pg1',50,65);
Increase2=integrate('0.25*Pg2+30','Pg2',80,65);
printf('\nIncrease in cost for unit 1 is = %0.1f Rs/hr',Increase1);
printf('\n\nIncrease in cost for unit 2 is = %0.3f Rs/hr',Increase2);
printf('\n\nNet saving caused by optimum scheduling is = %0.3f Rs/hr',Increase1+Increase2);
printf('\n\nTotal yearly saving assuming continuous operation= Rs %d',(Increase1+Increase2)*24*365);
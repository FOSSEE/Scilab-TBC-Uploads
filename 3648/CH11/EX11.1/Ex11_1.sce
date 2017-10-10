//Example 11_1
clc();
clear;
//To find out how much heat is required to change the temperature
//With 400 Grams of water
c=1    //units in cal/g Centigrade
m=400   //Units in gm
t=5     //Units in centigrade
q=c*m*t    //Units in Cal
printf("The heat required for 400 gm of water is Q=%d Cal\n",q)
//With 400 grams of copper
c=0.093    //units in cal/g Centigrade
m=400   //Units in gm
t=-5     //Units in centigrade
q=c*m*t    //Units in Cal
printf("The heat required for 400 gm of copper is Q=%d Cal\n",q)

//Example 17_10
clc();
clear;
//To find the current in battery
r1=3  //Units in Ohms
r2=6    //Units in Ohms
ra=(r1*r2)/(r1+r2) //Units in Ohms
r3=2         //Units in Ohms
r4=4     //Units in Ohms
rb=r3+r4        //Units in Ohms
r5=6           //Units in Ohms
rc=(r5*rb)/(r5+rb)    //Units in Ohms
r6=9            //Units in Ohms
r=r6+rc           //Units in Ohms
v=6               //Units in V
i=v/r                //Units in Ohms
printf("The current in battery is I=%.2f A",i)

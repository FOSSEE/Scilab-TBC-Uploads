
//To calculate the Specific Latent Heat of vaporization of water

//Example 25.4

clear;

clc;

m=1.5;//Mass of steam condensed in grams

s=1;//Specific Heat Capacity in cal/g-C

t1=100;//Initial Temperature in degree Celsius

t2=30;//Final Temperature in degree Celsius

t=t1-t2;//Change in Temperature in degree Celsius

Q2=m*s*t;//Heat lost in the process of cooling from 100 degree Celsius to 30 degree Celsius in calories

We=15;//Wateer Equivalent of Calorimeter in grams

Mw=165;//Mass of water in grams

t3=25;//Initial Temperature in degree Celsius

t4=30;//Final Temperature in degree Celsius

T=t4-t3;//Change in temperature in degree Celsius

Q3=(We+Mw)*s*T;//Heat supplied to raise the temperature from 25 degree Celsius to 30 degree Celsius in Calories

L=(Q3-Q2)/m;//Specific Latent Heat of Vapourization of water

printf("Specific Latent Heat of Vapourization of water=%f cal/g",L);

clc
clear 
printf("example 6.17 page number 264\n\n")

//to find the number of stages
x=0.01   //mole fraction of nicotine
yN = 0.0006;   //mole fraction in solvent
xN = 0.001;     //final mole fraction in water

X0=x/(1-x);    //in kg nicotine/kg water
YN =yN/(1-yN);   //in kg nicotine/kg keroscene
XN = xN/(1-xN);
A0=100*(1-X0);    //kgwater/h
B0=150*(1-YN);   //in kg kerosene/h

Y1=((A0*(X0-XN))/B0)+YN;    //in kg nicotine/kg kerosene
printf("Y1 = %f kg nicotine/kg kerosene",Y1)

//for graph refer to the book
number_of_stages = 8.4;
printf("\n\nnumnber of stages = %f",number_of_stages)

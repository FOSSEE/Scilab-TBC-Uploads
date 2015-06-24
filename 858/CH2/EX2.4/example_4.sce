clc
clear 
printf("example 2.4 page number 72\n\n")

//to find NaCl content in NaOH solution

w=2   //in gm
m=0.287  //in gm

//precipitate from 58.5gm of NaCl=143.4gm

mNaCl=58.5/143.4*m;

printf("mass of NaCl = %f gm\n",mNaCl )

percentage_NaCl=mNaCl/w*100;
printf("amount of NaCl = %f",percentage_NaCl)

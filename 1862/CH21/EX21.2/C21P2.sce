clear
clc
//to find maximum temperature variation allowable during ruling 

//Given:
//refer to table 21-3
//accuracy for milimeter interval
delta_L = 5e-5//in mm
//coefficient of linear expansion
alpha = 11e-6//in per degree celsius
//consider length of steel 
L = 1//in mm

//Solution:
//using formula for temperature expansion
//maximum temperature variation allowable during ruling
delta_T = delta_L/(alpha*L)//in degree celsius

printf ("\n\n Maximum temperature variation allowable during ruling delta_T = \n\n %.1f degree celsius" ,delta_T);

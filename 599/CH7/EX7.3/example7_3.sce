
clear;
clc;
printf("\t Example 7.3\n");

s1=19.75;              //solubility at 70 degree per 100 gm of water
s2=16.5;              //solubility at 50 degree per 100 gm of water
s3=12.97;              //solubility at 30 degree per 100 gm of water
s4=9.22;              //solubility at 10 degree per 100 gm of water
s5=7.34;              //solubility at 0 degree per 100 gm of water
        //basis is 1000kg of saturated solution
w1=1000*(s1/(s1+100));            //weight of K2SO4 in the original solution
w2=1000-w1;                      //weight of water in kg
w3=w1*.5;                       //weight of K2SO4 in the solution
wp=w3/(w3+w2);              //weight percent of K2SO4 in the solution after crystallistion
printf("\n for the corresponding temperature to :%f percent of K2SO4  is 15 degree (by linear interpolation between 10 to 30 degree) ",wp*100);

//end
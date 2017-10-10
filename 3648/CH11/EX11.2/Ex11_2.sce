//Example 11_2
clc();
clear;
//To findout how much water is released
//When it crystallizes
m=50    //Units in gm
h=80    //Units in Cal/gm
q=m*h    //Units in Cal
printf("When it crystallizes heat required is Q=%d Cal\n",q)
//When it Condenses
m=50    //Units in gm
h=539    //Units in Cal/gm
q=m*h    //Units in Cal
printf("When it condenses heat required is Q=%d Cal\n",q)
//In textbook answer is printed wrong as Q=27000 cal but the correct answer is Q=26950 Cal

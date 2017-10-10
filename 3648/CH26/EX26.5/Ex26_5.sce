//Example 26_5
clc();
clear;
//To find  the energy difference between the n is 1 and n is 2 level
e1=1      //Units in eV
lamda2=1240      //Units in eV
lamda3=0.07     //Units in eV
e2=lamda2/lamda3      //Units in eV
e=e2-e1          //Units in eV
printf("The energy difference between n=1 and n=2 level is E=%d eV",e)
//In textbook answer is prinred wrong as E=18000 eV the correct answer is E=17713 eV 

//Chapter 5
//Example 5_3
//Page 92

clear;clc;

rs=100;
exceed=0.15;
fr=0.3;

x=rs/(fr-exceed);

printf("Number of units at which charges due to both tariffs become equal = %.2f units \n\n", x);
printf("Tariff (a) is economical if consumption is more than %.2f units \n\n", x);

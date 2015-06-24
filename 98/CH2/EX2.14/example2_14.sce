//Chapter 2
//Example 2_14
//Page 28

clear;clc;

fc=0.28;
cv=1e4;
n_alternator=0.95;

heat=cv*fc;
printf("Heat equivalent of ikWh =860 kcal\n");
n_overall = 860/heat;
printf("(i)\t Overall efficiency = %.2f %% \n\n", n_overall*100);
printf("(ii)\t Engine efficiency =%.2f %% \n\n", n_overall/n_alternator*100);





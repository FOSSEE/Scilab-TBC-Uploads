//Fuels and Combustion//
//Example 8.2//
C=90;//percentage of carbon//
O=3.0;//percentage of oxygen//
S=0.5;//percentage of sulphur//
N=0.5;//percentage of nytrogen//
H=4.60;//percentage of hydrogen//
LCV=8500;//Law calorific value of the coal in Kcal/Kg//
printf('percentage of hydrogen=H=%f',H);
GCV=(8080*C+34500*(H-O/8)+2240*S)/100;//Gross calorific value of the sample in cal per grams//
printf('\nGross Calorific value of the fuel=GCV=%fcal/g',GCV);

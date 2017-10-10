//ques-2.18
//Calculating weight of air and oxygen and weight of air when excess air is supplied and GCV and NCV
clc
C=750;//Weight of carbon in coal (in g)
H=52;//Weight of hydrogen in coal (in g)
O=121;//Weight of oxygen in coal (in g)
N=32;//Weight of nitrogen in coal (in g)
e=40;//Percentage of excess air supplied

//Part (i)
min_O=C*(32/12)+H*(16/2)-O;//Minimum weight of oxygen required (in g)
min_air=min_O*(100/23);//Minimum weight of air required for complete combustion (in g)
printf("The minimum amount of air and oxygen required are %.3f kg and %.3f kg respectively.\n\n",min_air/1000,min_O/1000);

//Part (ii)
W=min_air*(1+e/100);//Weight of air with excess air supplied (in g)
printf(" The weight of air when excess air is supplied is %.3f kg.\n\n",W);

//Part(iii)
GCV=(8080*C+34500*(H-O/8))/1000;//Gross calorific value (in kcal/kg)
NCV=GCV-0.09*(H/10)*587;//Net calorific value (in kcal/kg)
printf(" The gross and net calorific values are %d kcal/kg and %d kcal/kg respectively.",GCV,NCV);

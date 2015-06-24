clc
//initialisation of variables
clear
Hc= 234.4 //kcal
Hdc= 300 //kcal
Hch= 436.5 //kcal
Hco= 152 //kcal
Hsco= 70 //kcal
Hoh= 110.2 //kcal
Hoo= 885 //kcal
Hb= 38 //kcal
Hc= 28 //kcal
Ha= 206 //kcal
H1co= 2128 //kcal
H1oh= 661 //kcal
H1c= 231 //kcal
//CALCULATIONS
dH= Hc+Hdc+Hch+Hco+Hsco+Hoh+Hoo+Ha+Hb+Hc-H1co-H1oh-H1c
//RESULTS
printf ('Heat of combustion = %.f kcal',dH)

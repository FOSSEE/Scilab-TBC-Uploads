//Problem 11.09:

//initializing the variables:

//calculation:
//The partial pressure of ammonia is converted to mole fraction in vapor as shown in Table 11.3.
// These results of table 11.3 are plotted in Fig. 11.7.
//Henry’s law constant from the graph is approximately 1.485 at x = 0.095. Since
Yactual = 0.148
Ycalculated = 1.485*(0.095)
Percentagreement = Ycalculated*100/Yactual

printf("\n\nResult\n\n")
printf("\n from x = 0 to x = %.3f Henry’s law equation, y = 1.485x, predicts the equilibrium vapor content to within 5 percent of the experimental data.",Percentagreement/1000)

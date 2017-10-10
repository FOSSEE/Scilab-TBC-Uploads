clear//

//Variables

q = 1.6 * 10**-19            //Charge on electron (in Coulomb)  
sig = 100.0                  //Conductivity of Ge (in per ohm-centimeter)
sig1 = 0.1                   //Conductivity of Si (in per ohm-centimeter)
ni = 1.5 * 10**10            //intrinsic conductivity for Si (in per cubic-centimeter)
un = 3800.0                  //mobility of electrons for Ge (in square-centimetermeter per volt-second)
up = 1800.0                  //mobility of holes for Ge (in square-centimeter per volt-second)
un1 = 1300.0                 //mobility of electrons for Si (in square-centimetermeter per volt-second)
up1 = 500.0                  //mobility of holes for Si (in square-centimeter per volt-second)
ni1 = 2.5 * 10**13           //intrinsic concentration for Ge (in per cubic-centimeter)

//Calculation

p = sig / (q * up)           //Concentration of p-type germanium (in cubic-centimeter)
n = ni1**2 / p               //Concentration of electrons in germanium (in cubic-centimeter)
n1 = sig1 / (q * un1)        //Concentration of N-type silicon (in cubic-centimeter)
p1 = ni**2 / n1              //Concentration of holes in silicon (in cubic-centimere)

//Result

printf("\n For p-type germanium, hole concentration is  %0.3f /cm**3.\nFor p-type germanium, electron concentration is  %0.3f /cm**3.",p,n)
printf("\n For n-type silicon, hole concentration is  %0.3f /cm**3.\nFor n-type silicon, electron concentration is  %0.3f /cm**3.",p1,n1)

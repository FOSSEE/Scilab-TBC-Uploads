

clc
// given that
C_Al=97 //Aluminium wt%
C_Cu=3 //Copper wt%
A_Al=26.98 //Atomic wt of Aluminium
A_Cu=63.55 //Atomic wt of Copper

printf(" Example 5.3\n")
    CAl=C_Al*A_Cu*100/((C_Al*A_Cu)+(C_Cu*A_Al))
    CCu=C_Cu*A_Al*100/((C_Cu*A_Al)+(C_Al*A_Cu))
printf("\n Atomic %% of Al is %.1f%%",CAl);
printf("\n Atomic %% of Cu is %.1f%%\n",CCu)

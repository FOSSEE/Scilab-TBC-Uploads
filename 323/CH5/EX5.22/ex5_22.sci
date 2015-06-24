//Ex5.22,Pg5.23
clc;
flkva=150 //Given
Wi=1.4 //Iron loss in kW
Wcu=1.6 //Copper loss in kW
//(a)
lkva=flkva*sqrt(Wi/Wcu)
printf("\n Load kVA=%.2f kVA \n",lkva)
//For maximum efficiency Wi=Wcu=1.4kW and pf=0.8
n= (lkva*0.8/((lkva*0.8)+Wi+Wcu))*100
printf("\n Efficiency=%.2f percent \n",n)
//(b)
n= (0.5*flkva*0.8/((0.5*flkva*0.8)+Wi+(0.5^2)*Wcu))*100
printf("\n Efficiency=%.2f percent \n",n)
 
// Conversion among temperature scales

clear;
clc;

printf("\t Example 1.3\n");

//for Solder

C=224;//melting point of solder, C
F=C*9/5+32;//melting point of solder, F

printf("\t the melting point of solder is : %4.0f F\n",F);


//for Helium

F=-452;//boiling point of helium, F
C=(F-32)*5/9;//boiling point of helium, C

printf("\t the boiling point of helium is : %4.0f C\n",C);


//for Mercury

C=-38.9;//meltiing point of mercury, C
K=C+273.15;//meltiing point of mercury, K

printf("\t the meltiing point of mercury is : %4.2f K\n",K);

//End


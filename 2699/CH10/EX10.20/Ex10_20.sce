//EX10_20 PG-10.67
clc
printf("\n   Vo = -(0.1V1 + 0.5V2 + 20V3)\n\n")
Rf=10;//we assume feedback resistance to be equal to 10kohm
R1=Rf/0.1;//Rf/R1=0.1 given 
R2=Rf/0.5;//Rf/R2=0.5 given 
R3=Rf/20;//Rf/R3=20 given 
printf("   R1= %.0f kohm  R2= %.0f kohm R3 = %.0f ohm\n",R1,R2,R3*1e3)
printf("\n   The circuit design is shown")

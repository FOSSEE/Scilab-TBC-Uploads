//EX10_21 PG-10.70
clc
printf("\n   Vo = (2V1 - 3V2 + 4V3 - 5V4)\n\n")
printf("   The positive terms and negative terms can be added separately\n\n")
printf("\n   Vo1 = (2V1 + 4V3 )\n")
Rf1=100;//we assume feedback resistance to be equal to 100kohm
R1=Rf1/2;//Rf/R1=2 given 
R3=Rf1/4;//Rf/R3=4 given 
printf("   Therefore R1= %.0fkohm   R3 = %.0fkohm\n",R1,R3)

printf("\n   Vo2 = -(3V2 + 5V4)\n")
Rf2=120;//we assume feedback resistance to be equal to 120kohm
R2=Rf2/3;//Rf/R2=3 given 
R4=Rf2/5;//Rf/R4=5 given 
printf("   Therefore R2= %.0fkohm   R4 = %.0fkohm\n",R2,R4)
printf("\n   The output voltage is Vo = Vo2-Vo1 = (2V1 - 3V2 + 4V3 - 5V4)")
printf("\n   The circuit design is shown")
printf("\n   For the subtractor we use R = 100kohm  ")

clc;
////page 168
Ax=4.5//in m
Ay=6//in m
DF=sqrt((Ax^2)+(Ay^2))
F=150//in KN
Ex=-(Ax/DF)*F
printf("Ex=%.2f kN \n",Ex);
Ey=((Ay/DF)*F)+(4*20)
printf("Ey=%.2f kN \n",Ey);

M_E=-((20*7.2)+(20*5.4)+(20*3.6)+(20*1.8)-((Ay/DF)*F*Ax))
printf("M_E=%.0f kN  +ve sign shows reaction is directed as assumed \n",M_E);

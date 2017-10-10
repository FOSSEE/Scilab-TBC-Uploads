clc;

W=8000; // N   weight of automobile
alpha=2;//degree
// TAB and TAC are tensions in cable AB and cable AC respectively 
A=90+30;// degree , Angle between vector T1 and resultant
B=alpha;// degree , Angle between vector T2 and resultant
C=180-(A+B);// degree , Angle between vector T1 and T2


// conversion of angles into radian
A=A*%pi/180;
B=B*%pi/180;
C=C*%pi/180;


// sin(A)/TAB == sin(B)/TAC == sin(C)/W .............. sine law


TAB=(W*sin(A))/sin(C);//N
TAC=(W*sin(B))/sin(C);//N

printf("Tension in cable AB is TAB=%.2f N and in Cable AC  is TAC=%.2f N \n",TAB,TAC);



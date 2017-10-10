clc;

R=25; // kN   Magnitude of Resultant vector
alpha=45;//degree
// T1 and T2 are tensions in rope 1 and rope 2 respectively 
A=30;// degree , Angle between vector T1 and resultant
B=alpha;// degree , Angle between vector T2 and resultant
C=180-(A+B);// degree , Angle between vector T1 and T2


// conversion of angles into radian
A=A*%pi/180;
B=B*%pi/180;
C=C*%pi/180;


// sin(A)/T2 == sin(B)/T1 == sin(C)/R .............. sine law

T1=(R*sin(B))/sin(C);//kN
T2=(R*sin(A))/sin(C);//kN


printf("Tension in rope 1 is T1=%.2f kN and in rope 2 is T2=%.2f kN \n",T1,T2);


// Minimum value of T2 occcurs when T1 and T2 are perpendicular to each other i.e C=90 degree
C=90;//degree
A=30;// degree
B=180-(A+C);//degrees
alpha=B;//degrees
B=B*%pi/180;// radian
T2=R*sin(B);// kN
T1=R*cos(B);//kN
printf("Minimum tension in rope 2 is T2=%.2f kN \n",T2);
printf("corrosponding T1=%.2f kN \n ",T1);
printf("alpha=%.2f degrees",alpha);



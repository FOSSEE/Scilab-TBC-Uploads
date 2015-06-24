clc;
//page 168
//Take x axis parallel to track and Y axis perpendicular to track
W=25;//kN
// Resolving weight
Wx=W*cos(25*%pi/180);//kN
Wy=-W*sin(25*%pi/180);//kN
//At equillibrium equations are +-> sum Fx=0, +sum(M_A)=0, +sum(M_B)=0

//+sum(M_A)=0 gives -(10.5kN)(625 mm)-(22.65 kN)(150 mm)+ R2(1250 mm)=0, R2 assumed to be in +ve Y direction
R2=(10.5*625+22.65*150)/1250;//kN
printf("R2=%.0f kN  +ve sign shows reaction is directed as assumed \n",R2);

//+sum(M_B)=0 gives (10.5kN)(625 mm)-(22.65 kN)(150 mm)+ R1(1250 mm)=0, R1 assumed to be in +ve Y direction
R1=(10.5*625-22.65*150)/1250;//kN
printf("R1=%.1f kN  +ve sign shows reaction is directed as assumed \n",R1);

//Sum Fx=0 gives, 22.65 N-T=0
T=22.65;//kN
printf("T=%.2f kN  +ve sign shows reaction is directed as assumed \n",T);

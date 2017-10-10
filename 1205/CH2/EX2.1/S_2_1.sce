clc;

//Getting resultant of two vectors

P=40; // N   Magnitude of vector P
Q=60 // N Magnitude of vector Q
// imagine triangle for triangle law of vectors 
B=180-25;// degree , Angle between vector P and vector Q

//R- Resultant vector
B=B*%pi/180;// conversion into radian
//R^2=P^2+Q^2-2*P*Q*cos(B);    Cosine Law
R=sqrt(P^2+Q^2-2*P*Q*cos(B));// N

printf("Maginitude of Resultant is R= %.2f N\n",R);


//A- Angle between Resultant and P vector, Unknown

// sin(A)/Q == sin(B)/R  sine law

A=asin(Q*sin(B)/R);// radian


A=A*180/%pi;//// Conversion into degree

alpha=A+20;// degree
printf("Angle of Resultant  vector R with x axis is %.2f Degrees\n",alpha);



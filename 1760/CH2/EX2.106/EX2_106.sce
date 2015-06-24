                        //EXAMPLE-2.106     PG NO-144
Fo=35.59;      //frequency in HZ
V=50;
R=100;
I=V/R;
L=0.5;
XL=(2*%pi*Fo*L);
V.I=XL*L;    //VOLTAGE ACROSS INDUCTION
XC=XL;
Q=XC/R;
S=L/Q;
W2=323.55;     //UPPER HALF REQUENCY
W1=123.65;      //LOWER HAL FREQUENCY
B.W=W2-W1;     //  BAND WIDTH
disp('i) INDUCTION  = '+string (XL)+ ' ohm ');
disp('i)VOLTAGE ACROSS INDUCTION   = '+string (V.I)+ ' V ');
disp('i) Q  = '+string (Q)+ ' ');
disp('i) REQUENCY  = '+  string   (S)+     ' ohm ');
disp('i) BAND WIDTH  = ' +string (B.W)  +  ' rad/sec');
        
 

                        //EXAMPLE-2.105     PG-NO143
N1=250;     //number of  turn
I1=2;      //current
Q1=0.3*10^-3;            //phi
L1=(N1*Q1)/I1;
V2=63.75;
K=0.85;
x=10^3;     //x=di/dt
M=V2/x;
L2=((V2/K)^2)/((37.510^-3)^0.5);
Q12=0.255*10^-3;
y=1.275*10^-7;    //y=dQ12/dt
N2=V2/y
;
disp('i) L1 = '+string (L1)+' Tesla')
disp('ii) M = '+string (M)+' ')
disp('iii) L2 = '+string (L2)+' ')
disp('iv) N2 = '+string (N2)+'')

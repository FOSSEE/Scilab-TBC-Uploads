                                //EXAMPLE-2.97  PG NO-140
N1=500;             //NUMBER OF TURN
N22=1500;
N12=500
Q1=0.6*10^-3;        //FLUX OF COIL
I1=5;                //CURRENT
Q12=0.3*10^-3;
L1=(N1*Q1)/I1
K=Q12/Q1;
L2=(N22/N12)*L1;
M=K*((L1*L2)^0.5);
disp('i) L1 = '+string (L2)+' ');
disp('ii) K = '+string (K)+' H');
disp('iii) L2 = '+string (L2)+' H');          
disp('i) M = '+string (M)+' H ');

                           //EXAMPLE 2-102        PG NO-142
L1=0.3;
L2=0.8;                //INDUCTANCE
K=0.7;
M=K*sqrt(L1*L2);
disp('i)  M (M) is    =  '+string (M) +'  H ');
Lp=[(L1*L2)-M^2]/[L1+L2-(2*M)];
disp('ii)  Lp (Lp) is    =  '+string (Lp) +'  H ');

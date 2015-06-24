// example:-5.1,page no.-209.
//program to find the equivalent voltages and current.
syms a b A Zte V I C1 C2 P;
P=(a*b*A^2)/(4*Zte);
c=(1/2)*V*I;
d=(1/2)*(A^2)*C1*C2;
C1=sqrt((a*b)/2);  // on comparision.
C2=sqrt((a*b)/2)*Zte;  // on comparision.
c=[C1 C2];
disp(c)
disp("which completes the transmission line equivalence for the TE10 mode.")
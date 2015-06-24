         //Example 2-103         pg no-142
L1=10;
L2=5;
L3=6;
M12=2;
M23=1;
M13=1;
X=1    //   X=di/dt
V1=(L1*X)+(M12*X)+(M13*X);
V2=(M12*X)+(L2*X)+(M23*X);
V3=(-M13*X)+(-M23*X)+(L3*X);
V=V1+V2+V3;
Ls=L1+L2+L3+(2*M12)-(2*M23)-(2*M13);
disp('i) V1 = '+string (V1)+' ')
disp('ii) V2 = '+string (V2)+' ')
disp('iii) V3 = '+string (V3)+' ')
disp('iv) V = '+string (V)+' ')
disp('v)equivlent indutance (Ls) = '+string (Ls)+' mH')

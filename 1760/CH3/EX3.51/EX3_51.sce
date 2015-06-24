                          //EXAMPLE 3-51     PG NO -205
R1=1.5;
X=2.396;
X1=sqrt(X^2-R1^2);
disp('i) X1   is   =  '+string (X1) +'ohm ');
IL=100;
Ip=IL/1.732;
disp('ii) Peak Current  =  '+string (Ip) +' A ');
R2=4.5;
Z=7.1878;
X2=sqrt(Z^2-R2^2)
disp('iii) X2   is   =  '+string (X2) +'ohm ');
PF=R2/(Z);
disp('vi) Power Factor   is   =  '+string (PF) +' ');

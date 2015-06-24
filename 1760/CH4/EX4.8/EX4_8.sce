                        //EXAMPLE 4-8            PG  NO-230-231
V=25;
Vm=0.64;
Vn=3.05;
R1=5;
R2=9.64
I1=(V-R2)/R1
disp('i) CURRENT  (I1) is       =  '+string (I1) +' A ');
I2=R2/4;
disp('ii) CURRENT  (I2) is     =  '+string (I2) +' A ');
I3=(R2-Vn)/10;
disp('iii) CURRENT  (I3) is     =  '+string (I3) +' A ');
I4=(10-Vn)/8;
disp('vi) CURRENT  (I4) is     =  '+string (I4) +' A ');
I5=Vn/2;
disp('v) CURRENT  (I5) is     =  '+string (I5) +' A ');

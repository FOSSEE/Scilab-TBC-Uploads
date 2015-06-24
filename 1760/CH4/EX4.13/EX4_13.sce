                           //Example       4-13             PG NO-235
X=[1 -0.5  2;-0.5 3.5 -4;-0.5 -1 0];
X1=[2 -0.5 -0.5;-4   3.5 -1;0 -1 2.5 ]
X2=[1 -0.5 -0.5;-0.5 3.5 -1;-0.5 -1 2.5];
V=det([X1-X]/X2);                          //V=VA-VC
disp('i) VOLTAGE (V)   is     =  '+string (V) +' V ');
I2=0.5*1.566;
disp('i) Current (I2)   is     =  '+string (I2) +' A    ');

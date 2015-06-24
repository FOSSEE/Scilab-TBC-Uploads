//chapter 8
//example 8.2
//page 298
R1=4*10^3;R2=4*10^3;// given for 555 timer
C=.01*10^-6;//for 555 timer
f=1.44/((R1+2*R2)*C);
disp(f)//frequency of output in Hz
D=(R1+R2)/(R1+2*R2);
disp(D)//duty cycle
percentage=D*100
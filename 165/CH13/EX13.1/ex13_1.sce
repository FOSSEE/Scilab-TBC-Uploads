//Example 13.1
clc;

R=5000;       //Total resisrence of POT
Vt=5;         //Potential applied
ssl=3;        //Shaft stroke length in inches
w_at=0.9;     //wiper is at 0.9 inch
//value of R2
R2=w_at*R/ssl;
R1=R-R2;      //Given R = R1 + R2
Vo=Vt*R2/(R1+R2);
printf('\nValue of output voltage is %.2f V\n',Vo)
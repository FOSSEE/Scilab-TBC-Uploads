//Chapter 6
//Example 6.1
//page 195
//To Ybus using singular transformation

clear;clc;
printf('Let us solve this problem by giving values given in the table 6.1 instead of keeping it in variables');

y10=1;y20=1;y30=1;y40=1;
y34=2-%i*6;y23=0.666-%i*2;
y12=2-%i*6;y24=1-%i*3;
y13=1-%i*3;

Y=[y10 0 0 0 0 0 0 0 0;
   0 y20 0 0 0 0 0 0 0;
   0 0 y30 0 0 0 0 0 0;
   0 0 0 y40 0 0 0 0 0;
   0 0 0 0 y34 0 0 0 0;
   0 0 0 0 0 y23 0 0 0;
   0 0 0 0 0 0 y12 0 0;
   0 0 0 0 0 0 0 y24 0;
   0 0 0 0 0 0 0 0 y13];
A=[1 0 0 0;
   0 1 0 0;
   0 0 1 0;
   0 0 0 1;
   0 0 1 -1;
   0 -1 1 0;
   1 -1 0 0;
   0 -1 0 1;
   -1 0 1 0];
printf('\n\n Ybus matrix using singular transformation for the system of fig.6.2 is \n Ybus= ');
Y=A'*Y*A;
disp(Y);
// for verification let us calculate as given in the text book
printf('\n\n For verification,calculating Ybus substituting as given in the text book\n Ybus(verifiaction)=');
Yveri=[(y10+y12+y13) -y12 -y13 0;-y12 (y20+y12+y23+y24) -y23 -y24;-y13 -y23 (y30+y13+y23+y34) -y34;0 -y24 -y34 (y40+y24+y34)];
disp(Yveri);
   


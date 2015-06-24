//CHAPTER 1- D.C. CIRCUIT ANALYSIS AND NETWORK THEOREMS 
//Example 16

disp("CHAPTER 1");
disp("EXAMPLE 16");

//VARIABLE INITIALIZATION
v=7;                            //voltage source in Volts
I=7;                            //current source in Amperes
r1=1;                           //in Ohms
r2=2;                           //in Ohms
r3=1;                           //in Ohms
r4=2;                           //in Ohms
r5=3;                           //in Ohms

//SOLUTION
//(4)vb+(-1)vc=0........eq (1)
//(-2)vb+(11)vc=21......eq (2)
//solving the equations by matrix method
A=[4 -1;-2 11];
b=[0;21];
x=inv(A)*b;
vb=x(1,:);                      //to access the 1st element of 2X1 matrix
vc=x(2,:);                      //to access the 2nd element of 2X1 matrix
vx=-vc;
disp(sprintf("By Nodal analysis, the value of Vx is %d V",vx));

//END

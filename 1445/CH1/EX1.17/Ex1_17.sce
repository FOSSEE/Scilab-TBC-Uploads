//CHAPTER 1- D.C. CIRCUIT ANALYSIS AND NETWORK THEOREMS 
//Example 17

disp("CHAPTER 1");
disp("EXAMPLE 17");

//VARIABLE INITIALIZATION
v=7;                            //voltage source in Volts
I=7;                            //current source in Amperes
r1=1;                           //in Ohms
r2=2;                           //in Ohms
r3=1;                           //in Ohms
r4=2;                           //in Ohms
r5=3;                           //in Ohms

//SOLUTION

//deactivating the current source
res=(v/4)+(v/2);
vc=res/((1/4)+(1/r1)+(1/r2));
vx1=-vc;

//deactivating voltage source
//(4)va+(-1)vb=-21........eq (1)
//(2)va+(-11)vb=0.........eq (2)
//solving the equations by matrix method
A=[4 -1;2 -11];
b=[-21;0];
x=inv(A)*b;
va=x(1,:);                       //to access 1st element of 2X1 matrix
vb=x(2,:);                       //to access 2nd element of 2X1 matrix
vx2=-vb;
vx=vx1+vx2;
disp(sprintf("By Superposition Theorem, the value of Vx is %d V",vx));

//END

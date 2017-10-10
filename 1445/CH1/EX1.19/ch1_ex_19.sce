//CHAPTER 1- D.C. CIRCUIT ANALYSIS AND NETWORK THEOREMS 
//Example 19

disp("CHAPTER 1");
disp("EXAMPLE 19");

//VARIABLE INITIALIZATION
v=7;                            //voltage source in Volts
I=7;                            //current source in Amperes
r1=1;                           //in Ohms
r2=2;                           //in Ohms
r3=1;                           //in Ohms
r4=2;                           //in Ohms
r5=3;                           //in Ohms

//SOLUTION
//(1)I1+(-4)I2+(3)In=7.......eq (1)
//(-1)I1+(6)I1+(-3)In=0......eq (2)
//(0)I1+(1)I2+(-1)In=0.......eq (3)
//solving the equations by matrix method
A=[1 -4 3;-1 6 -3;0 1 -1];
b=[7;0;0];
x=inv(A)*b;
I1=x(1,:);                      //to access the 1st element of 3X1 matrix
I2=x(2,:);                      //to access the 2nd element of 3X1 matrix
In=x(3,:);                      //to access the 3rd element of 3X1 matrix
r=r1+r5;
rn=(r*r4)/(r+r4);
I=(rn*In)/(rn+r3);
vx=-I*r3;   
disp(sprintf("By Norton Theorem, the value of V_x is %d V",vx));

//END

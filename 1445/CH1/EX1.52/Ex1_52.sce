//CHAPTER 1- D.C. CIRCUIT ANALYSIS AND NETWORK THEOREMS 
//Example 52

clc;
disp("CHAPTER 1");
disp("EXAMPLE 52");

//VARIABLE INITIALIZATION
v1=20;                          //LHS voltage source in Volts
v2=12;                          //RHS voltage source in Volts
r1=5;                           //LHS resistance in Ohms
r2=2;                           //in Ohms
r3=8;                           //in Ohms
r4=10;                          //RHS resistance in Ohms

//SOLUTION

//by Thevenin's Theorem
rth=r3+((r1*r2)/(r1+r2));       //Thevenin resistance
v=v1*(r2/(r1+r2));              //voltage divider law
vab=-v2+(r3*0)+(rth*0)+v;
It=vab/(rth+r4);                //current obtained by applying Thevenin's Theorem 
Isc=vab/rth;
disp(sprintf("By Thevenins Theorem, current in the 10Ω resistor is %f A",It));

//verification by Norton's Theorem
//(7)I1+(2)I2=20.................eq (1)
//(2)I1+(10)I2=12................eq (2)
//solving the equations using matrix method
A=[7 2;2 10]; 
b=[20;12];
x=inv(A)*b;
x1=x(1,:);                      //to access 1st element of 2X1 matrix
x2=x(2,:);                      //to access 2nd element of 2X1 matrix and Isc=-x2
Isc=-x2;                        //Isc is negative because its direction is opposite to I2
I=Isc*(rth/(rth+r4));           //current obtained by applying Norton's Theorem 
if(It==I)
disp(sprintf("By Nortons Theorem, current in the 10Ω resistor is %f A",I));
disp(sprintf("Hence, answer is confirmed by Norton Theorem"));
else
disp(sprintf("The answer is not confirmed by Norton Theorem")); 
end;

//END
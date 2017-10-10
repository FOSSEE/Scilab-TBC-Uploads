//CHAPTER 1- D.C. CIRCUIT ANALYSIS AND NETWORK THEOREMS 
//Example 52

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
rth=r3+((r1*r2)/(r1+r2));
v=v1*(r2/(r1+r2));              //by voltage divider law
vab=-v2+(r3*0)+(rth*0)+v;
I1=vab/(rth+r4);
Isc=vab/rth;
disp(sprintf("By Thevenin Theorem, the value of current is %f A",I1));

//verification by Norton's Theorem
//7I1+2I2=20.................eq (1)
//2I1+10I2=12................eq (2)
//solving the equations using matrix method
A=[7 2;2 10]; 
b=[20;12];
x=inv(A)*b;
x1=x(1,:);                      //to access 1st element of 2X1 matrix
x2=x(2,:);                      //to access 2nd element of 2X1 matrix and Isc=-x2
Isc=-x2;
I2=Isc*(rth/(rth+r4)); 
if(I1==I2)
disp(sprintf("By Norton Theorem, the value of current is %f A",I2));
disp(sprintf("Hence, answer is confirmed by Norton Theorem"));
else
disp(sprintf("The answer is not confirmed by Norton Theorem")); 
end;

//END




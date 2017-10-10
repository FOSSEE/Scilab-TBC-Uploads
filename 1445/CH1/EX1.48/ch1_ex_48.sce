//CHAPTER 1- D.C. CIRCUIT ANALYSIS AND NETWORK THEOREMS 
//Example 48

disp("CHAPTER 1");
disp("EXAMPLE 48");

//VARIABLE INITIALIZATION
v1=2.05;                             //1st cell in Volts
v2=2.15;                             //2nd cell in Volts
r1=0.05;                             //in Ohms
r2=0.04;                             //in Ohms
r3=1;                                //in Ohms

//SOLUTION
//(r3+r1)I1+(r3)I2=v1......eq (1)
//(r3)I1+(r3+r2)I2=v2......eq (2)
req1=r3+r1; 
req2=r3+r2; 
A=[req1 r3;r3 req2];
b=[v1;v2];
x=inv(A)*b;
I1=x(1,:);                           //to access the 1st element of 2X1 matrix
I2=x(2,:);                           //to access the 2nd element of 2X1 matrix
I=I1+I2;
pd=I*r3;                 
disp(sprintf("Current through B1 is %f A",I1));
disp(sprintf("Current through B2 is %f A",I2));
disp(sprintf("Potential difference across AC is %f V",pd));

//END



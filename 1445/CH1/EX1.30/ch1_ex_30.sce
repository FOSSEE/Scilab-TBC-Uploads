//CHAPTER 1- D.C. CIRCUIT ANALYSIS AND NETWORK THEOREMS 
//Example 30

disp("CHAPTER 1");
disp("EXAMPLE 30");

//VARIABLE INITIALIZATION
I1=25;                            //current source in Amperes
I2=20;                            //current source in Amperes
v=20;                             //voltage source in Volts
r1=4;                             //LHS resistance in Ohms
r2=10;                            //in Ohms
r3=2;                             //in Ohms
r4=1;                             //in Ohms
r5=10;                            //RHS resistance in Ohms

//SOLUTION

//source transformation
v1=I1*r1;                         //current source I1 is converted to voltage source v1
v2=I2*r3;                         //current source I2 is converted to voltage source v2

//using mesh analysis
//(8)IA+(-1)IB=30........eq (1)
//(-2)IA+(3)IB=20........eq (2)
//solving the equations by matrix method
A=[8 -1;-2 3];
b=[30;20];
x=inv(A)*b;
IA=x(1,:);                        //to access the 1st element of 2X1 matrix
IB=x(2,:);                        //to access the 2nd element of 2X1 matrix
disp(sprintf("By Mesh analysis I_A= %d A and I_B= %d A",IA,IB));

//using nodal analysis
req=r1+r2;
res=(v1/req)+(v2/r3)+(v/r4);
v3=res/((1/req)+(1/r3)+(1/r4)); 
I3=(v1-v3)/req;
I4=(v2-v)/r3;                     //since here ((v2-v)/r3)=((v3-v)/r4) (this is only done for convinient calculation)
disp(sprintf("By Nodal analysis I_1= %d A and I_2= %d A",I3,I4));

//END

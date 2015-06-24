//CHAPTER 1- D.C. CIRCUIT ANALYSIS AND NETWORK THEOREMS 
//Example 37

disp("CHAPTER 1");
disp("EXAMPLE 37");

//VARIABLE INITIALIZATION
v1=90;                              //voltage source in Volts
r1=8;                               //in Ohms
r2=6;                               //in Ohms
r3=5;                               //in Ohms
r4=4;                               //in Ohms
r5=8;                               //diagonal resistance in Ohms
r6=8;                               //in Ohms

//SOLUTION

//solution (i): using Thevenin's Theorem 
//(3)v1+(-2)v2=90...........eq (1)  //applying nodal analysis at node 1
//(-2)v1+(4)v2=-90..........eq (2)  //applying nodal analysis at node 2
A=[3 -2;-2 4];
b=[90;-90];
x=inv(A)*b;
v1=x(1,:); 
v2=x(2,:);
vth=v1;
req1=(r1*r5)/(r1+r5); 
req2=req1+r4; 
req3=(req2*r6)/(req2+r6); 
rth=req3+r2;
vab1=(vth*r3)/(rth+r3); 
disp(sprintf("By Thevenin Theorem, the value of Vab is %.2f V",vab1));

//solution (ii): using Norton's Theorem
//(13)v1+(-7)v2=270.........eq (1)  //applying nodal analysis at node 1
//(7)v1+(-13)v2=0...........eq (2)  //applying nodal analysis at node 2
A=[13 -7;7 -13];
b=[270;0];
x=inv(A)*b;
v1=x(1,:);
v2=x(2,:);
req1=(r1*r5)/(r1+r5);
req2=req1+r4;
req3=(req2*r6)/(req2+r6);
rN=req3+r2;
if(v1>v2) then
In=(v1-v2)/r2;
else
IN=(v2-v1)/r2;
end;
vab2=(r3*IN)*(rN/(rth+r3)); 
disp(sprintf("By Norton Theorem, the value of Vab is %.2f V",vab2));

//END

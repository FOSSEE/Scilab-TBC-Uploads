//CHAPTER 1- D.C. CIRCUIT ANALYSIS AND NETWORK THEOREMS 
//Example 40

clc;
disp("CHAPTER 1");
disp("EXAMPLE 40");

//VARIABLE INITIALIZATION
v1=20;                        //in Volts
v2=10;                        //in Volts
r1=5;                         //top resistance in Ohms
r2=10;                        //bottom resistance in Ohms
r3=5;                         //in Ohms
r4=5;                         //in Ohms
r5=10;                        //in Ohms

//SOLUTION
//(5)I1+(10)I3+(-10)I4=20............eq (1)
//(0)I1+(10)I3+(10)I4=-50............eq (2)
//(5)I1+(20)I3+(0)I4=-30.............eq (3) (eq(1) + eq(2))
//Since the determinant of matrix A is 0, hence, the set of these equations cannot be solved by matrix method
//So, solving them directly,

I3=-15/25;
I1=-3-(3/5);
I4=-5-(-3/5);
I=I1+3+5;
disp("The currents (in Amperes) flowing in different branches are:"); 
disp(I1);
disp(I3);
disp(I4);
disp(sprintf("The total current is %f A",I)); 

//END

//CHAPTER 1- D.C. CIRCUIT ANALYSIS AND NETWORK THEOREMS 
//Example 42

disp("CHAPTER 1");
disp("EXAMPLE 42");

//VARIABLE INITIALIZATION
v=10;                           //in Volts
I=0.5;                          //in Amperes
r1=4;                           //top LHS resistance in Ohms
r2=2;                           //top RHS resistance in Ohms
r3=2;                           //first resistance in Ohms
r4=2;                           //second resistance in Ohms

//SOLUTION

//using Thevenin theorem
rth=(r1*r3)/(r1+r3);
vth=v*(r3/(r1+r3));
//solving for R directly,
R=(40-(56*I))/(24*I);
disp(sprintf("(i) By Thevenin Theorem, the value of R is %d Ω",R));

//using nodal analysis
//solving the quadratic equation formed by comparing eq(1) and eq(2)
//(3)R^2+(-3)R+(0)=0
a=3;
b=-3;
c=0;
D=(b^2)-(4*a*c);                //discriminant
R1=(-b+sqrt(D))/(2*a);
R2=(-b-sqrt(D))/(2*a);
if(R1==1) then
disp(sprintf("(ii) By Nodal analysis, the value of R is %d Ω",R1));
else 
disp(sprintf("(ii) By Nodal analysis, the value of R is %d Ω",R1));
end;

//END  

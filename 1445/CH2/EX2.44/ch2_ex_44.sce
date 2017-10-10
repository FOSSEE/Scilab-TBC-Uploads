//CHAPTER 2- STEADY-STATE ANALYSIS OF SINGLE-PHASE A.C. CIRCUIT
//Example 44

disp("CHAPTER 2");
disp("EXAMPLE 44");

//VARIABLE INITIALIZATION
r=20;                           //in Ohms

//SOLUTION
p0=(4^2)*r;
p1=((5/sqrt(2))^2)*r;
p2=((3/sqrt(2))^2)*r;
p=p0+p1+p2;
I=sqrt(p/r);
disp(sprintf("The power consumed by the resistor is %d W",p));
disp(sprintf("The effective value of current is %f A",I));

//END 

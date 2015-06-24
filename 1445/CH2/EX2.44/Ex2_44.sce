//CHAPTER 2- STEADY-STATE ANALYSIS OF SINGLE-PHASE A.C. CIRCUIT
//Example 44

disp("CHAPTER 2");
disp("EXAMPLE 44");

//given
//current in the resistor is given by i=4+5.sin wt - 3.cos 3.wt
//VARIABLE INITIALIZATION
r=20;                           //resistance in Ohms

//SOLUTION
//Power consumed by the resistor is P=P0+P1+P2
p0=(4^2)*r;
p1=((5/sqrt(2))^2)*r;
p2=((3/sqrt(2))^2)*r;
p=p0+p1+p2;
I=sqrt(p/r);
disp(sprintf("The power consumed by the resistor is %d W",p));
disp(sprintf("The effective value of current is %.1f A",I));

//END 

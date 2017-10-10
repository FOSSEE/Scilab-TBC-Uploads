//CHAPTER 2- STEADY-STATE ANALYSIS OF SINGLE-PHASE A.C. CIRCUIT
//Example 7

disp("CHAPTER 2");
disp("EXAMPLE 7");

//VARIABLE INITIALIZATION
s1=300;                         //apparent power in kVA
pf1=0.65;                       //power factor(lagging)
pf2=0.85;                       //power factor(lagging)

//SOLUTION

//solution (a)
p=s1*pf1;                       //active power
q1=sqrt((s1^2)-(p^2));
disp(sprintf("(a) To bring the power factor to unity, the capacitor bank should have a capacity of %f kVAR",q1));

//solution (b)
s2=p/pf2;
q2=sqrt((s2^2)-(p^2));
disp(sprintf("(b) To bring the power factor to 85%% lagging, the capacitor bank should have a capacity of %f kVAR",q2));

//END

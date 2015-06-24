//CHAPTER 2- STEADY-STATE ANALYSIS OF SINGLE-PHASE A.C. CIRCUIT
//Example 7

disp("CHAPTER 2");
disp("EXAMPLE 7");

//VARIABLE INITIALIZATION
s1=300;                         //apparent power absorbed by the plant in kVA
pf1=0.65;                       //power factor(lagging)
pf2=0.85;                       //power factor(lagging)

//SOLUTION

//solution (a)
p=s1*pf1;                       //active power P=S.cos(Φ)
q1=sqrt((s1^2)-(p^2));		//Q=sqrt(S^2-P^2) in kVAr
disp(sprintf("(a) To bring the power factor to unity, the capacitor bank should have a capacity of %3.0f kVAR",q1));

//solution (b)
s2=p/pf2;			//since P=S.cos(Φ)
q2=sqrt((s2^2)-(p^2));		//Q=sqrt(S^2-P^2) in kVAr
disp(sprintf("(b) To bring the power factor to 85%% lagging, the capacitor bank should have a capacity of %3.0f kVAR",q2));

//END

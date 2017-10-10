//CHAPTER 1- D.C. CIRCUIT ANALYSIS AND NETWORK THEOREMS 
//Example 38

disp("CHAPTER 1");
disp("EXAMPLE 38");

//VARIABLE INITIALIZATION
I=2;                             //current source in Amperes
r1=2;                            //in Ohms 
r2=1;                            //in Ohms 
r3=1;                            //in Ohms 
r4=2;                            //in Ohms 

//SOLUTION

//Thevenin Equivalent circuit
I1=1;                            //since there is equal resistance of 3Ω, hence, current=1A
vth=(I1*r2)+(-I1*r4);
req1=r1+r2;
req2=r3+r4;
rth=(req1*req2)/(req1+req2);
disp("THEVENIN EQUIVALENT CIRCUIT IS-");
disp(sprintf("      Thevenin voltage= %d V",vth));
disp(sprintf("      Thevenin resistance= %f Ω",rth));

//Norton Equivalent circuit
v1=I/((1/r2)+(1/r4)); 
v2=-I/((1/r3)+(1/r1));
req1=r1+r2;
req2=r3+r4;
rn=(req1*req2)/(req1+req2);
Isc=(v1/r4)+v2;
disp("NORTON EQUIVALENT CIRCUIT IS-");
disp(sprintf("      Norton current= %f A",Isc));
disp(sprintf("      Norton resistance= %f Ω",rn));

//END

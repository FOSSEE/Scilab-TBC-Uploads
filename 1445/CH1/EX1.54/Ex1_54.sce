//CHAPTER 1- D.C. CIRCUIT ANALYSIS AND NETWORK THEOREMS 
//Example 54

disp("CHAPTER 1");
disp("EXAMPLE 54");

//VARIABLE INITIALIZATION
v=5;                            //voltage source in Volts
r1=1;                           //LHS resistance in Ohms
r2=5;                           //in Ohms
r3=1;                           //in Ohms
r4=1;                           //RHS resistance in Ohms
I=10;                           //current source in Amperes

//SOLUTION

req1=r1+r3+r4;                  //on deactivating the current source, current I1 flows in the circuit
I1=v/req1;
vab1=v-(I1*r1);                 //(I1*r1) is voltage drop across 1Ω resistance
I2=I/req1;
vab2=vab1+(I2*r1);              //(I2*r1) is voltage drop across 1Ω resistance
req=r1+((r3*r4)/(r3+r4));       //'req' is the same as 'Rth' mentioned in the book
I=vab2/(req+r2);
RTh=(6/5)+(3/4);                
req2=10+2;
I3=9/12;
disp(sprintf("The value of the current is %.2f A",I3));

//END 

//CHAPTER 1- D.C. CIRCUIT ANALYSIS AND NETWORK THEOREMS 
//Example 7

disp("CHAPTER 1");
disp("EXAMPLE 7");

//VARIABLE INITIALIZATION
I1=1;                           //current source in Amperes
v1=4;                           //voltage source in Volts
v2=3;                           //voltage source in Volts
v3=6;                           //voltage source in Volts
r1=2;                           //resistance in Ohms
r2=2;                           //resistance in Ohms
r3=1;                           //resistance in Ohms
r4=3;                           //resistance in Ohms

//SOLUTION
//converting all the voltage sources into current souces
I2=v1/r1;
I3=v2/r3;
I4=v3/r4;
disp(sprintf("The four current sources are %d A, %d A, %d A and %d A",I1,I2,I3,I4));

req1=(r1*r2)/(r1+r2);           // 2Ω and 2Ω are in parallel 
req2=(r3*r4)/(r3+r4);           // 3Ω and 1Ω are in parallel
v2=(I1+I4)*req1;
v3=(I3-I2)*req2;
req=req1+req2;
v=v2+v3;
I=v/req;
disp("VOLTAGE EQUIVALENT CIRCUIT:");
disp(sprintf("   Voltage source= %f V",v));
disp(sprintf("   Equivalent resistance(in series)= %f Ω",req));
disp("CURRENT EQUIVALENT CIRCUIT:");
disp(sprintf("   Current source= %f A",I));
disp(sprintf("   Equivalent resistance(in parallel)= %f Ω",req));

//END






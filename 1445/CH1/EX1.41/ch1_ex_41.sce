//CHAPTER 1- D.C. CIRCUIT ANALYSIS AND NETWORK THEOREMS 
//Example 41

disp("CHAPTER 1");
disp("EXAMPLE 41");

//VARIABLE INITIALIZATION
vs=6;                          //in Volts
Is=4;                          //in Amperes
r1=5;                          //in Ohms
r2=2;                          //in Ohms
r3=2;                          //in Ohms
r=2/3;                         //in Ohms
r4=3;                          //in Ohms
r5=1;                          //in Ohms
r6=2;                          //in Ohms

//SOLUTION
req1=(r2*r3)/(r2+r3);
req2=req1+r1;                  //resistance across vs
va=vs/req2;
rth1=(req1*r1)/(req1+r1); 
I1=Is*(r2/req2);               //current in 3Ω
vb=I1*r4; 
rth2=(r4*r4)/(r4+r4);          //since r4 is also 3Ω 
I=(vb-va)/(rth1+r+rth2);
disp(sprintf("The value of the current is %d A",I));

//END 


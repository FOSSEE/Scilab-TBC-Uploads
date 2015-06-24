//CHAPTER 1- D.C. CIRCUIT ANALYSIS AND NETWORK THEOREMS 
//Example 24

disp("CHAPTER 1");
disp("EXAMPLE 24");

//VARIABLE INITIALIZATION
I=20;                             //current source in Amperes
v1=10;                            //voltage source in Volt
v2=40;                            //voltage source in Volts
r1=8;                             //in Ohms
r2=5;                             //in Ohms
r3=4;                             //in Ohms
r4=12;                            //in Ohms

//SOLUTION

//activating 20A current source
r=r2+((r3*r4)/(r3+r4));
I1=(r*I1)/(r+r1);
I_20=(r3*I1)/(r3+r4);

//activating 10V battery source
req=r1+r2;
v_10=(-v1/req)/((1/req)+(1/r3)+(1/r4));
I_10=v_10/r4;

//activating 40V battery source
v_40=(v2/r3)/((1/req)+(1/r3)+(1/r4));
I_40=v_40/r4;
I_tot=I_20+I_10+I_40;
disp(sprintf("By Superposition Theorem, the value of I is .3%f A",I_tot));

//END

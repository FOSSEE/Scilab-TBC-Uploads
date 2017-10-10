//CHAPTER 2- STEADY-STATE ANALYSIS OF SINGLE-PHASE A.C. CIRCUIT
//Example 6

clc;
disp("CHAPTER 2");
disp("EXAMPLE 6");

//VARIABLE INITIALIZATION
f=50;                            //in Hertz
I1=20;                           //in Amperes
pf1=0.75;                        //power factor
v=230;                           //in Volts
pf2=0.9;                         //power factor(lagging)

//SOLUTION
phi1=acos(pf1);
res1=tan(phi1);                  //result1 = tan(Φ1)
phi2=acos(pf2);
res2=tan(phi2);                  //result2 = tan(Φ2)
Ic=I1*pf1*(res1-res2);
w=2*%pi*f;
c=Ic/(v*w);
disp(sprintf("The value of capacitance is %f μF",c*(10^6)));
Qc=v*Ic;
disp(sprintf("The reactive power is %f kVAR",Qc/(10^3)));
I2=I1*(pf1/pf2);
disp(sprintf("The new supply current is %f A",I2));

//END

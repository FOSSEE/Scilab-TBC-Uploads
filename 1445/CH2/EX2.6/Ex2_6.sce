//CHAPTER 2- STEADY-STATE ANALYSIS OF SINGLE-PHASE A.C. CIRCUIT
//Example 6

disp("CHAPTER 2");
disp("EXAMPLE 6");

//VARIABLE INITIALIZATION
f=50;                            //in Hertz
I1=20;                           //in Amperes
pf1=0.75;                        //power factor
v=230;                           //in Volts
pf2=0.9;                         //power factor(lagging)

//SOLUTION
//V.I1.cos(Φ1) = P
phi1=acos(pf1);
res1=tan(phi1);                  //result1 = tan(Φ1)
phi2=acos(pf2);
res2=tan(phi2);                  //result2 = tan(Φ2)
Ic=I1*pf1*(res1-res2);
w=2*%pi*f;                      //w=2.pi.f
c=Ic/(v*w);
disp(sprintf("The value of capacitance is %5.2f μF",c*(10^6)));//text book answer is 82.53 mF
Qc=v*Ic;			// reactive power in kVAr
disp(sprintf("The reactive power is %6.4f kVAR",Qc/(10^3)));//text book answer is 1.3716
I2=I1*(pf1/pf2);		//I1.cos(Φ1) = I2.cos(Φ2)
disp(sprintf("The new supply current is %5.2f A",I2));

//END

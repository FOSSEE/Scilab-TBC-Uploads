//CHAPTER 2- STEADY-STATE ANALYSIS OF SINGLE-PHASE A.C. CIRCUIT
//Example 5

clc;
disp("CHAPTER 2");
disp("EXAMPLE 5");

//VARIABLE INITIALIZATION
I1=0.75;                       //in Amperes
v=240;                         //in Volts
f=50;                          //in Hertz
p=80;                          //in Watts

//SOLUTION
res=p/v;                       
pf1=res/I1;                    //1st power factor = cos(Φ1)
phi1=acos(pf1);
res1=tan(phi1);                //result1 = tan(Φ1)
w=2*%pi*f;

//solution (a)
res2=0;                        //result2 = tan(Φ2)
Ic1=res*(res1-res2);
c1=Ic1/(v*w); 
disp(sprintf("(a) When power factor is unity, the value of capacitance is %f μF",c1*(10^6)));

//solution (b)
pf2=0.95;                      //given
phi2=acos(pf2);
res2=tan(phi2);
Ic2=res*(res1-res2);
c2=Ic2/(v*w);
disp(sprintf("(b) When power factor is 0.95(lagging), the value of capacitance is %f μF",c2*(10^6)));

//END



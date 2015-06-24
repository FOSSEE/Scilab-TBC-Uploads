//CHAPTER 2- STEADY-STATE ANALYSIS OF SINGLE-PHASE A.C. CIRCUIT
//Example 5

disp("CHAPTER 2");
disp("EXAMPLE 5");

//VARIABLE INITIALIZATION
I1=0.75;                       	//current in loop 1 in Amperes
v=240;                         	//voltage supply in Volts
f=50;                          	//frequency in Hertz
p=80;                          	//power consumed by the lamp in Watts

//SOLUTION
//V.I1.cos(Φ1) = P
res=p/v; 			//I1cos(Φ1)                      
pf1=res/I1;                    	//1st power factor = cos(Φ1)
phi1=acos(pf1);
res1=tan(phi1);                	//result1 = tan(Φ1)
w=2*%pi*f;			//w=2.pi.f		       

//solution (a)
//Given power factor = unity means cos(Φ2)=1
//hence Φ2=0, tan (Φ2)=0
res2=0;                        	//result2 = tan(Φ2) as Φ2=0
Ic1=res*(res1-res2);
c1=Ic1/(v*w); 
disp(sprintf("(a) When power factor is unity, the value of capacitance is %4.2f μF",c1*(10^6))); // in mF

//solution (b)
pf2=0.95;                      //given
phi2=acos(pf2);
res2=tan(phi2);
Ic2=res*(res1-res2);
c2=Ic2/(v*w);
disp(sprintf("(b) When power factor is 0.95(lagging), the value of capacitance is %5.3f μF",c2*(10^6))); //textbook answer is 7.458 mF

//END



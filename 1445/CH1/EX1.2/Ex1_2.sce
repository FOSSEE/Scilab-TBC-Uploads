//CHAPTER 1- D.C. CIRCUIT ANALYSIS AND NETWORK THEOREMS 
//Example 2

clc;
disp("CHAPTER 1");
disp("EXAMPLE 2");

//VARIABLE INITIALIZATION
//star values ra, rc and rd
ra=2;                         //in Ohms
rc=4;                         //in Ohms
rd=3;                         //in Ohms
r1=5;                         //in Ohms
r2=4;                         //in Ohms
r3=6;                         //in Ohms

//SOLUTION
//converting star with points A, C and D into delta ACD
r=(ra*rc)+(rc*rd)+(rd*ra);     //'r' is the resistance that appears in the numerator of the equation of star-delta conversion

//delta values rac, rcd and rad
rac=r/rd;
rcd=r/ra;
rad=r/rc;
req1=(r1*rad)/(r1+rad);        //equivalent resistance between A and D
req2=(r2*rcd)/(r2+rcd);        //equivalent resistance between C and D
req3=req1+req2;                //series combination of resistors
req4=(req3*rac)/(req3+rac);    //parallel combination of resistors
req5=req4+r3; 
req6=(req5*7)/(req5+7);
disp(sprintf("The eqivalent resistance between points A and B is %f Ω",req6));

//END

 

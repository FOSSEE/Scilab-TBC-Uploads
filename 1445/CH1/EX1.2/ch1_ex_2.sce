//CHAPTER 1- D.C. CIRCUIT ANALYSIS AND NETWORK THEOREMS 
//Example 2

disp("CHAPTER 1");
disp("EXAMPLE 2");

//VARIABLE INITIALIZATION
//converting star with points A, C and D into delta ACD
//star values
ra=2;
rc=4;
rd=3;

//SOLUTION
//delta values
r=(ra*rc)+(rc*rd)+(rd*ra);
rac=r/rd;
rcd=r/ra;
rad=r/rc;
req1=(5*rad)/(5+rad);          //equivalent resistance between A and D
req2=(4*rcd)/(4+rcd);          //equivalent resistance between C and D
req3=req1+req2;                //req1 and req2 are in series
req4=(req3*rac)/(req3+rac);    //req3 and rac are in parallel
req5=req4+6; 
req6=(req5*7)/(req5+7);
disp(sprintf("The eqivalent resistance between points A and B is %f Ω",req6));

//END

 

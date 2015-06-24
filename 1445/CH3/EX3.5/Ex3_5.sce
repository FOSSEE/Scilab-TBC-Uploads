//CHAPTER 3- THREE-PHASE A.C. CIRCUITS
//Example 5

disp("CHAPTER 3");
disp("EXAMPLE 5");

//VARIABLE INITIALIZATION
w1=5000;                       //reading of 1st wattmeter in Watts
w2=-1000;                      //reading of 2nd wattmeter in Watts

//SOLUTION

//solution (a)
p1=w1+w2;
disp(sprintf("(a) The total power is %d W",p1));

//solution (b)
p2=w1-w2;
phi=atan((sqrt(3)*p2)/p1);     //this equation comes from two-wattmeter method 
pow_fact=cos(phi);            
disp(sprintf("(b) The power factor of the load is %.3f", pow_fact));

//END



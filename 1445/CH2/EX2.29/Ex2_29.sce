//CHAPTER 2- STEADY-STATE ANALYSIS OF SINGLE-PHASE A.C. CIRCUIT
//Example 29 // read it as example 28 in the book on page 2.83

disp("CHAPTER 2");
disp("EXAMPLE 29");
//
//i=120.si(2.pi.f.t)
//VARIABLE INITIALIZATION
I=120;                           //Amplitude in Amps
f=60;                            //Hz 
t1=1/360;                        //in sec time to find amplitude
i2=96;                           //in Amps ,2 to find time taken to reach this
//SOLUTION
//i=Isin(wt)
//solution (a)
w=2*%pi*f;
i=I*sin(w*t1);
disp("SOLUTION (a)");
disp(sprintf("The amplitude at time %.3f sec is %.1f Amp",  t1,i)); 
//solution (b)
t2=(asin(i2/I))/w; 
disp("SOLUTION (b)");
disp(sprintf("The time taken to reach %2.0f Amp is %.5f Sec",  i2,t2));
disp(" "); 
// 
//END



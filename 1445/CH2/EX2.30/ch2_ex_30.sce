//CHAPTER 2- STEADY-STATE ANALYSIS OF SINGLE-PHASE A.C. CIRCUIT
//Example 30 // read it as example 29 in the book on page 2.83

disp("CHAPTER 2");
disp("EXAMPLE 30");

//VARIABLE INITIALIZATION 
f=50;                               //Hz
rms=20;                             //in Amp 
t1=0.0025;                          //in sec time to find amplitude
t2=0.0125;                          //in sec, to find amp after passing through +ve maximum
i3=14.14;                           //in Amps, to find time when will it occur after passing through +ve maxima
//SOLUTION
//i=Isin(wt)
//solution (a)
w=2*%pi*f;
Im=rms*sqrt(2);
disp(sprintf("The equation would be i=%f. sin(%f.t)",  Im,w));
t0=(asin(1)/w);                      //time to reach maxima in +ve direction
i=Im*sin(w*t1);
disp("SOLUTION (a)");
disp(sprintf("The amplitude at time %f sec is %f Amp",  t1,i)); 
//solution (b) 
tx=t0+t2;
i2=Im*sin(w*tx);
disp("SOLUTION (b)");
disp(sprintf("The amplitude at time %f sec is %f Amp",  t2,i2)); 
//solution (c) 
ty=(asin(i3/Im))/w;
t3=t0-ty;                           //since ty is the time starting from 0, the origin needs to be shifted to maxima
disp("SOLUTION (c)");
disp(sprintf("The amplitude  of %f Amp would be reached in %f Sec",  i3,t3)); 
disp(" "); 
// 
//END



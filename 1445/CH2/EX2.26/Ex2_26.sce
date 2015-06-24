//CHAPTER 2- STEADY-STATE ANALYSIS OF SINGLE-PHASE A.C. CIRCUIT
//Example 26 // read it as example 25 in the book on page 2.79

disp("CHAPTER 2");
disp("EXAMPLE 26");

//VARIABLE INITIALIZATION
A=100                           //Amplitude in Amps
f=25                            //frquency in Hz 
a1=20                           //value of current in Amps to be achieved in certain time
a2=100                          //value of current in Amps tobe achieved in certain time
 
//SOLUTION
//i=Im.sin(wt)
//solution (a)
// 
w=f*2*%pi;                      //angular speed
//when current attains 20 amp means instantaneous value of i=20 Amp
t1=(asin(a1/A))/w;
disp("SOLUTION (a)");
disp(sprintf("The time to reach value %d A is %3.5f sec",  a1,t1)); 
disp(" "); 
//solution (b)//when current attains 100 amp means instantaneous value of i=100 Amp
t2=(asin(a2/A))/w;
disp("SOLUTION (a)");
disp(sprintf("The time to reach value %d A is %3.2f sec",  a2,t2)); 
disp(" "); 
// 
//END



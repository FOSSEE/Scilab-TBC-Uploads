//CHAPTER 2- STEADY-STATE ANALYSIS OF SINGLE-PHASE A.C. CIRCUIT
//Example 26 // read it as example 25 in the book on page 2.79

clc;
disp("CHAPTER 2");
disp("EXAMPLE 26");

//VARIABLE INITIALIZATION
A=100                           //Amplitude in Amps
f=25                            //frquency in Hz 
a1=20                           //svalue in Amps to be achieved in certain time
a2=100                          //in Amps
 
//SOLUTION
//i=Isinwt
//solution (a)
//RAmplitude at 1/600 second after it becomes zero
w=f*2*%pi;                      //angular speed
t1=(asin(a1/A))/w;
disp("SOLUTION (a)");
disp(sprintf("The time to reach value %f A is %3f sec",  a1,t1)); 
disp(" "); 
//solution (b)
//since wave will pass in -ve direction after half period
t2=(asin(a2/A))/w;
disp("SOLUTION (a)");
disp(sprintf("The time to reach value %f A is %3f sec",  a2,t2)); 
disp(" "); 
// 
//END



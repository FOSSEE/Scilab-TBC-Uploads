//CHAPTER 2- STEADY-STATE ANALYSIS OF SINGLE-PHASE A.C. CIRCUIT
//Example 25 // read it as example 24 in the book on page 2.78

clc;
disp("CHAPTER 2");
disp("EXAMPLE 25");

//VARIABLE INITIALIZATION
V=350                           //Amplitude in Volts
f=50                            //frequency in Hz 
t1=0.005                        //sec after wave becomes zero again
t2=0.008                         //sec after waves passes through 0 in -ve direction
//SOLUTION
//e=Esinwt
//solution (a)
//RAmplitude at 1/600 second after it becomes zero
w=f*2*%pi;                      //angular speed
v1=V*sin(w*t1);
disp("SOLUTION (a)");
disp(sprintf("Voltage after %f sec is %3f A",  t1,v1)); 
disp(" "); 
//solution (b)
//since wave will pass in -ve direction after half period
hp=1/(2*f);                     //half period, the point where sine beomes zero again after origin
t=hp+t2;
v2=V*sin(w*t);
disp("SOLUTION (b)");
disp(sprintf("The voltage would be  %f V %3f  sec", v2,t));
// 
//END


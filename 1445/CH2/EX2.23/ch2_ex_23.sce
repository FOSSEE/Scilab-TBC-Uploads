//CHAPTER 2- STEADY-STATE ANALYSIS OF SINGLE-PHASE A.C. CIRCUIT
//Example 22 // read it as example 22 in the book on page 2.76

disp("CHAPTER 2");
disp("EXAMPLE 23");

//VARIABLE INITIALIZATION
A=100                           //Amplitude in Amps
f=50                            //frquency in Hz 
t1=1/600                        //sec after wave becomes zero again
a1=86.6                         //amplitude at some time t after start
//SOLUTION

//solution (a)
//RAmplitude at 1/600 second after it becomes zero
w=f*2*%pi;                      //angular speed
hp=1/(2*f);                     //half period, the point where sine beomes zero again after origin
t=hp+t1;
a2=A*sin(w*t);
disp("SOLUTION (a)");
disp(sprintf("Amplitude after 1/600 sec is %3f A",  a2)); 
disp(" "); 
//solution (b)
//since A=A0.sinwt, t=asin(A/A0)/w
t2=(asin(a1/A))/w;
disp("SOLUTION (b)");
disp(sprintf("The time at which amp would be  %fis  %3f  sec", a1,t2));
// 
//solution (iii)
//Bandwidth (f2-f1)=R/(2.π.L), f1,f2 half power frequencies
//
//END



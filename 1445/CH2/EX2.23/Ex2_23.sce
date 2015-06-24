//CHAPTER 2- STEADY-STATE ANALYSIS OF SINGLE-PHASE A.C. CIRCUIT
//Example 22 // read it as example 22 in the book on page 2.76

disp("CHAPTER 2");
disp("EXAMPLE 23");

//Given
//Equation of an Ac current with respect to origin 
//i=100.sin2.pi.50t
//i=100.sin 100.pi.t
//
//VARIABLE INITIALIZATION
A=100                           //Amplitude in Amps
f=50                            //frquency in Hz 
t1=1/600                        //sec after wave becomes zero again
a1=86.6                         //amplitude at some time t after start
//SOLUTION

//solution (a)
//Amplitude at 1/600 second after it becomes zero
//
w=f*2*%pi;                      //angular speed
hp=1/(2*f);                     //half period, the point where sine beomes zero again after origin
//The hald period , hp, needs to be added to 1/600 sec
t=hp+t1;
a2=A*sin(w*t);
disp("SOLUTION (a)");
disp(sprintf("Amplitude after 1/600 sec is %3.0f A",  a2)); 
disp(" "); 
//solution (b)
//since A=A0.sinwt, t=asin(A/A0)/w
t2=(asin(a1/A))/w;
disp("SOLUTION (b)");
disp(sprintf("The time at which amp would be  %3.2f is  %3.3f  sec", a1,t2));//text book answer is 1/300 sec
// 

//END



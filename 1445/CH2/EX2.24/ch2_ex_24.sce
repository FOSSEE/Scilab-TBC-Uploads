//CHAPTER 2- STEADY-STATE ANALYSIS OF SINGLE-PHASE A.C. CIRCUIT
//Example 22 // read it as example 23 in the book on page 2.77

disp("CHAPTER 2");
disp("EXAMPLE 24");

//VARIABLE INITIALIZATION
V=200                           //Amplitude in Volts
w=314                           //angular spped
R=20                            //in ohms 
//SOLUTION

//solution 
//comparing with standard equation
Im=V/R;                         // in Amps
rms=Im/2;
Iav=Im/%pi;                     //average current
ff=rms/Iav;
disp("SOLUTION");
disp(sprintf("RMS value of current is %3f A",  rms)); 
disp(sprintf("Average value of current is %3f A",  Iav)); 
disp(sprintf("Form Factor of current is %3f A",  ff)); 
disp(" "); 
//
//END



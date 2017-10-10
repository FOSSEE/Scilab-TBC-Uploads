//CHAPTER 2- STEADY-STATE ANALYSIS OF SINGLE-PHASE A.C. CIRCUIT
//Example 43 // read it as example 42 in the book on page 2.102

disp("CHAPTER 2");
disp("EXAMPLE 43");

//VARIABLE INITIALIZATION 
I=5;                                // max amplitude of wave in Amp
f=50;                               //Hz
//wave for is to be obtained by adding the two waves
//i=5+5.sin(wt)=5+5.sin(theta)
//
//SOLUTION
Iav=(1/(2*%pi))*integrate('5+5*sin(th)', 'th',0,2*%pi);
Ims=(1/(2*%pi))*integrate('(5+5*sin(th))^2', 'th',0,2*%pi);
//
disp(sprintf("The  average value of resultant current is %f Amp",  Iav));
disp(sprintf("The  RMS value of resultant current is %f Amp",  sqrt(Ims)));
disp(" "); 
// 
//END

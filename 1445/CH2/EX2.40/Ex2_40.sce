//CHAPTER 2- STEADY-STATE ANALYSIS OF SINGLE-PHASE A.C. CIRCUIT
//Example 40 // read it as example 39 in the book on page 2.98

disp("CHAPTER 2");
disp("EXAMPLE 40");
//
//Given
//V=100.sin(314.t+5) V
//current is i=5.sin (314.t-40)
//VARIABLE INITIALIZATION 
V=100;                              // max amplitude of wave
w=314;                              //angular speed
phiV=5;                              //phase angle in degrees
I=5;                                //max current amplitude
phiI=-40;                           //phase angle in current in deg

//
//SOLUTION
phi=phiI-phiV;                      // phase difference
pf=cos(phi*%pi/180);                //convert to radians
p=(V/sqrt(2))*(I/sqrt(2))*pf; 
//
disp(sprintf("The  Power factor is %.3f lagging",  pf));
disp(sprintf("The  Power delivered  is %.2f W",  p));
disp(" "); 
// 
//END

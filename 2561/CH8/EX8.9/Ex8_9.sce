//Ex8_9
clc
alpha=1.414// Damping coefficient for Butterworth LP filter
disp("alpha="+string(alpha)) 
AM=3-alpha
disp("AM="+string(AM)) // Midband gain of filter 
fOH=1*10^(3)
disp("fOH= "+string(fOH)+" Hz")//Cut off frequency
R1=10*10^(3)// Choosing value of R1 same as in book
disp("R1= "+string(R1)+ " ohm")  // Resistor at input side of (OP-AMP)filter 
RF=R1*(AM-1)
disp("RF=R1*(AM-1)="+string(RF)+ " ohm")  //Feedback resistance 
C=0.1*10^(-6) // Choosing value of capacitor same a in book
disp("C="+string(C)+"farad")
R=1/(2*%pi*fOH*C)// Using formulae wOH=1/C*R and wOH=(2*%pi*fOH)
disp("R=1/(omega_OH*C)=1/(2*%pi*fOH*C)="+string(R)+ " ohm")  // resistance value for filter design

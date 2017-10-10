//CHAPTER 2- STEADY-STATE ANALYSIS OF SINGLE-PHASE A.C. CIRCUIT
//Example 38 // read it as example 37 in the book on page 2.93

disp("CHAPTER 2");
disp("EXAMPLE 38");

//VARIABLE INITIALIZATION 
z1=10+15*%i;
z2=12-20*%i;
V=230;
//invZ=1/z1+1/z2;
Z=z1*z2/(z1+z2);
magZ=sqrt(real(Z)^2+imag(Z)^2);
I=V/magZ;
pf=real(Z)/magZ;
disp("SOLUTION (a)");
disp(sprintf("The  current   is %f Amp",  I));
//
disp("SOLUTION (b)");
disp(sprintf("The  Power factor  is %f",  pf));
disp(" "); 
// 
//END



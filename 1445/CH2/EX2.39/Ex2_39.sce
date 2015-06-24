//CHAPTER 2- STEADY-STATE ANALYSIS OF SINGLE-PHASE A.C. CIRCUIT
//Example 39 // read it as example 38 in the book on page 2.94

disp("CHAPTER 2");
disp("EXAMPLE 39");

//VARIABLE INITIALIZATION 
z1=2.5+1.5*%i;
z2=4+3*%i;
z3=3-4*%i;
V=200;
f=50;                               
E=V+0*%i;                           // representing as a vector 
//invZ=1/z1+1/z2;
//Z23=1/Z2+1/Z3 which is equivalent impedance of parallel circuits
//Z13=Z1+Z23    which is symbolic expression of total impedance
//
//SOLUTION
Z23=z2*z3/(z2+z3);
Z=z1+Z23;
disp("SOLUTION (a)");
disp(sprintf("The  symbolic expression of impedance %.1f+j%.1f Amp",real(Z),imag(Z)));
I=E/Z;
magI=sqrt(real(I)^2+imag(I)^2);     //total current
phi=atan(-imag(I)/real(I));         //total phase
//
//Voltages across the branches
e12=I*z1;                           //voltage across series branch
mage12=sqrt(real(e12)^2+imag(e12)^2);
phi12=atan(imag(e12)/real(e12));
//
e23=E-e12;                          //voltage across parallel branch
mage23=sqrt(real(e23)^2+imag(e23)^2);
phi23=atan(-imag(e23)/real(e23));
//
//current in branch 1 upper
i1=e23/z2;
magi1=sqrt(real(i1)^2+imag(i1)^2);
phii1=atan(-imag(i1)/real(i1));
//
//current in branch 2 lower
i2=e23/z3;
magi2=sqrt(real(i2)^2+imag(i2)^2);
phii2=atan(imag(i2)/real(i2));
disp("SOLUTION (b)");
disp(sprintf("The  current in Upper branch  is %.1f Amp",magi1));
disp(sprintf("The  current in Lower branch  is %.1f Amp",magi2));
disp(sprintf("The  Total current   is %.2f Amp",magI));//the text book answer is wrongly shown as 328 A
//
pf=cos(phi);                        //
disp("SOLUTION (c)");
disp(sprintf("The  Power factor  is %.3f",  pf));
//
disp("SOLUTION (d)");
disp(sprintf("The  voltage across series branch is %.1f V",  mage12));
disp(sprintf("The  voltage across parallel branch is %.0f V",  mage23));
//
tp=V*magI*pf;   //total power
disp("SOLUTION (e)");
disp(sprintf("The  total power absorbed in circuit is %d W",  tp));// the text book answer is 6480 W
disp(" "); 
// 
//END


//CHAPTER 1- D.C. CIRCUIT ANALYSIS AND NETWORK THEOREMS 
//Example 49

disp("CHAPTER 1");
disp("EXAMPLE 49");

//VARIABLE INITIALIZATION
v1=110;                        //voltage source in Volts
v2=80;                         //voltage source in Volts
v3=50;                         //voltage source in Volts
r=2;                           //in Ohms

//SOLUTION

//solution (a)
I1=4;                          //charging
I2=6;                          //charging
r1=((v1-v2)-((I1+I2)*r))/I1;
r2=((v1-v3)-((I1+I2)*r))/I2;
disp(sprintf("(a) R1= %f Ω",r1));
disp(sprintf("    R2= %f Ω",r2));

//solution (b)
I1=2;                           //discharging
I2=20;                          //charging
r1=((v1-v2)-((I2-I1)*r))/(-I1);
r2=((v1-v3)-((I2-I1)*r))/I2;
disp(sprintf("(b) R1= %f Ω",r1));
disp(sprintf("    R2= %f Ω",r2));

//solution (c)
I1=0;
I2=(v1-v2)/r;
r2=((v1-v3)-(I2*r))/I2;
disp(sprintf("(c) I1=0 when R2= %d Ω",r2));

//END


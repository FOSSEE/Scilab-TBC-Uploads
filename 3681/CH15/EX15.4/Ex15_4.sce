// Calculating the winding depth and winding space and space factor and the number of turns
clc;
disp('Example 15.4, Page No. = 15.9')
// Given Data
hf = 80;// in between flanges (in mm)
Do = 75;// in flange diameter (in mm)
Di = 30;// in gross diameter tube (in mm)
a = 0.0357;// Area of copper wire
d = 0.213;// Diameter of bare conductor (in mm)
d1 = 0.213+2*0.05;// Diameter of insulated conductor (in mm)
// Calculation of the winding depth and winding space and space factor and the number of turns
df = (Do-Di)/2;// Winding depth (in mm)
Aw = hf*10^(-3)*df*10^(-3);// Winding space
disp(df,'(a) Winding depth =');
disp(Aw,'   Winding space =');
disp('(b) for conductors when they bed')
Sf = 0.9*(d/d1)^(2);// Space factor
T = Sf*Aw/a*10^(6);// Number of turns
disp(Sf,'    Space factor =');
disp(T,'    Number of turns =');
disp('   for conductors when they do not bed')
Sf = 0.78*(d/d1)^(2);// Space factor
T = Sf*Aw/a*10^(6);// Number of turns 
disp(Sf,'    Space factor =');
disp(T,'    Number of turns =');
//in book answers are 22.5 mm, 0.0018 mm square, 0.417, 21025, 0.361 and 18200.  The answers vary due to round off error

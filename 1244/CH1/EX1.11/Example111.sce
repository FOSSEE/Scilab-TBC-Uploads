


// Display mode
mode(0);

// Display warning for floating point exception
ieee(1);

clc;
disp("Principles of Heat Transfer, 7th Ed. Frank Kreith et. al Chapter - 1 Example # 1.11 ")

//Hot-gas temperature in K
Tgh = 1300;
//Heat transfer coefficient on hot side in W/m2K
h1 = 200;
//Heat transfer coefficient on cold side in W/m2K
h3 = 400;
//Coolant temperature in K
Tgc = 300;
//Max temp. in C
Tsg = 800;
//Maximum permissible unit thermal resistance per square meter of the metal wall in K/W
R2 = (Tgh-Tgc)/((Tgh-Tsg)/(1/h1))-1/h1-1/h3;
disp("Maximum permissible unit thermal resistance per square meter of the metal wall in m2.K/W is")
R2

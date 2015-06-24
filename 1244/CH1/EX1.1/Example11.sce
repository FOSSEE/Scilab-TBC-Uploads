

// Display mode
mode(0);

// Display warning for floating point exception
ieee(1);

clc;
disp("Principles of Heat Transfer, 7th Ed. Frank Kreith et. al Chapter - 1 Example # 1.1 ")

//Temperature Inside in F
Ti = 55;
//Temperature outside in F
To = 45;
//Thickness of the wall in ft
t = 1;
//Heat loss through the wall in Btu/h-ft2
q = 3.4;

//Converting Btu/h-ft2 to W/m2
disp("Heat loss through the wall in W/m2 is")
//Heat loss through the wall in W/m2 
qdash = (q*0.2931)/0.0929

//Heat loss for a 100ft2 surface over a 24-h period
disp("Heat loss for a 100ft2 surface over a 24-h period in Btu is")
//Heat loss for a 100ft2 surface over a 24-h period in Btu 
Q = (q*100)*24

//Q in SI units i.e. kWh
Q = (Q*0.2931)/1000;

//At price of 10c/kWh, the total price shall be
disp("So, the total price in c are")
//Total price in c
Price = 10*Q

//clear//
clear;
clc;

//Example 17.1
//Given
yb = 0.30;

//Let
Vb = 100; //[mol]
Ace_in = yb*Vb; //[mol]
Air_in = Vb-Ace_in; //[mol]
//97 percent acetone aborbed, Acetone leaving is
Ace_out = 0.03*Ace_in; //[mol]
ya = Ace_out/(Air_in+Ace_out);
//Acetone absorbed
Ace_abs = Ace_in-Ace_out; //[mol]
//10 percent acetone in the leaving solution and no acetone in the entering oil
Lb = Ace_abs/0.1; //[mol]
La = Lb-Ace_abs; //[mol]
//To find out as intermediate point on the operating line, making an acetone balance
//around the top part of the tower, assuming a particular value of yV the moles of 
//acetone left in the gas. 
for i=1:30  
  y(i) = i/(i+Air_in); 
//The moles of acetone lost by the gas in the secion, must equal to the moles gained by //the liquid 
Ace_lost = i-Ace_out; //[mol]
//Hence 
x(i) = Ace_lost/(La+Ace_lost);
end
xe = linspace(0.001,0.15,100);
ye = 1.9*xe;

plot(x,y)
plot(xe,ye,'r')
xlabel('x')
ylabel('y')
legend('Operating line','Equilibrium line')
title('Diagram Example 17.1')
//The number of ideal stages determined from Fig is 4

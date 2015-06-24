// Display mode
mode(0);
// Display warning for floating point exception
ieee(1);
clear;
clc;
disp("Turbomachinery Design and Theory,Rama S. R. Gorla and Aijaz A. Khan, Chapter 6, Example 10")
disp("With the help of alpha1, U and C1, the velocity triangle at the blade inlet can be constructed easily as shown in Fig. Ex610")
disp("Applying the cosine rule to the triangle ABC,")
C1 = 950;
U = 380;
alpha1 = 20;
V1 = (U^2+C1^2-2*U*C1*cos(alpha1*%pi/180))^0.5
disp("Now, applying the sine rule to the triangle ABC,")
disp("V1/sin(alpha1) = C1/sin(180-beta1) = C1/sin(beta1)")
beta1 = asin(C1*sin(alpha1*%pi/180)/V1)*180/%pi
disp("From triangle ACD")
Cw1 = C1*cos(alpha1*%pi/180)
disp("As beta1 = beta2, using triangle BEF and neglecting friction loss, i.e. V1 = V2")
beta2 = beta1;
V2 = V1;
BF = V2 *cos(beta2*%pi/180)
Cw2 = BF-U
disp("Change in velocity of whirl:")
DeltaCw = Cw1+Cw2
disp("Tangential force on blades: in N")
m = 12;
F = m*DeltaCw/60
disp("Horse Power")
P = m*U*DeltaCw/(60*1000*0.746)

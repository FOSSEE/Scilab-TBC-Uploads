// Display mode
mode(0);
// Display warning for floating point exception
ieee(1);
clear;
clc;
disp("Turbomachinery Design and Theory,Rama S. R. Gorla and Aijaz A. Khan, Chapter 6, Example 7")
disp("Blade speed U is given by: in m/s")
D = 1050;
N = 2800;
U1 = %pi*D*N/(60*1000)
disp("The velocity diagram is shown in Fig. Ex67. Applying the cosine rule to the triangle ABC,")
C1 = 590;
alpha1 = 20;
V1 =(U1^2+C1^2-2*U1*C1*cos(alpha1*%pi/180))^0.5
disp("Applying the sine rule to the triangle ABC, C1sin (ACB) = V1/sin (alpha1)")
disp("but sin(ACB) = sin(180-beta1) = sin(beta1)")
beta1 = asin(C1*sin(alpha1*%pi/180)/V1)*180/%pi
beta2 = beta1;
disp("From Triangle ABD")
Cw1 = C1*cos(alpha1*%pi/180)
disp("From triangle CEF")
disp("Ca2/(U + Cw2) = tan(beta2) = tan(beta1) = tan(26.75) = 0.504")
Ca2 =155;
Cw2 = Ca2/tan(beta1*%pi/180) -U1
DeltaCw = Cw1+Cw2
disp("Relative velocity at the rotor outlet is:")
V2 = Ca2/sin(beta2*%pi/180)
disp("Blade velocity coefficient is:")
k = V2/V1
disp("Work done on the blades per kg/s: in kW")
W = DeltaCw *U1/1000
disp("Diagram efficiency")
etad = 2*W/(C1^2) *100000

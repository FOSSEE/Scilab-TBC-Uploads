// Book - Power System: Analysis & Design 5th Edition
// Authors - J. Duncan Glover, Mulukutla S. Sharma, Thomas J. Overbye
// Chapter - 5 : Example 5.10
// Scilab Version 6.0.0 : OS - Windows

clc;
clear;

Comp = 30/100;                   // Compensation in percent
Vs = 765;                        // Sending end voltage in kV
Vr = Vs;                         // Receiving end voltage in kV
Z = 97.02;                       // Absolute eqivalent pi circuit value ; Taken from Ex 5.3
PRmaxun=5738                     // Maximum power that can be delivered by uncompensated line(From example 5.5)
F1 = sind(87.210);               // Eqivalent pi circuit angle ; Taken from Ex 5.3
X1 = Z*F1;                       // Eqivalent series reactance without compensation in Ohm ; taken from Ex 5.3
Zcap = -(%i)*(1/2)*Comp*X1;      // Impedance of series capacitor in Ohm
ABCD = [1 Zcap; 0 1];            // From figure 5.4 for series impedance the ABCD matrix
ABCD2 = [ 0.9313*exp(%i*0.209*%pi/180) 97.0*exp(%i*87.2*%pi/180);
         1.37*10^(-3)*exp(%i*90.06*%pi/180) 0.9313*exp(%i*0.209*%pi/180) ]; // The ABCD parameters taken from Ex 5.2
ABCDeq = ABCD*ABCD2*ABCD;                                                   // The eqivalent ABCD matrix of the compensated line
Aeq = abs(ABCDeq(1,1));                                                     // Absolute value of the line parameter A
thetaAeq = atand(imag(ABCDeq(1,1))/real(ABCDeq(1,1)));                      // Angle value of the line parameter A
Beq = abs(ABCDeq(1,2));                                                     // Absolute value of the line parameter B
thetaBeq = atand(imag(ABCDeq(1,2))/real(ABCDeq(1,2)));                      // Angle value of the line parameter B
PRmax=(Vs^2/Beq)-(Aeq*Vs^2/Beq)*cosd(thetaBeq-thetaAeq);                    // maximum power that can be delivered
dif=(PRmax/PRmaxun)*100-100;                                                // Percentage difference in power delivered between compensated and uncompensated line
printf('The theoretical maximum power that this compensated line can deliver is %d MW',PRmax)
printf('\nThe power delivered by compensated line is %.2f percent more than that of uncompensated line',dif)

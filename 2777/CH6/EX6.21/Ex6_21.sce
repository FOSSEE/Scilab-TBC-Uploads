
// ELECTRICAL MACHINES
// R.K.Srivastava
// First Impression 2011
// CENGAGE LEARNING INDIA PVT. LTD

// CHAPTER : 6 : SYNCHRONOUS MACHINES

// EXAMPLE : 6.21

clear ; clc ; close ; // Clear the work space and console


// GIVEN DATA

v = 440;                       // Operating voltage of the Synchronous Motor in Volts
f = 50;                        // Operating Frequency of the Synchronous Motor in Hertz
xd = 10;                       // Direct axis reactances in Ohms
xq = 7.0;                      // Quadrature axis reactances in Ohms
p = 6;                         // Total number of Poles
pf = 0.8;                      // Power factor lagging
i = 10;                        // Motor drawing current in Amphere 


// CALCULATIONS

V = v/sqrt(3);                                  // Phase voltage in Volts
ws = (4*%pi*f)/p;                               // Synchronous speed in Radians per second
theta = acosd(pf);                              // Power factor angle in degree
I = 10*(cosd(theta)+(%i*sind(theta)));          // Motor drawing current in Amphere at 0.8 PF leading
delta = atand((i*xq*cosd(theta))/(V+i*xq*sind(theta)));             // Power angle for motoring mode in degree
Iq = i*cosd(theta+delta);                                           // Current in Amphere
Id = i*sind(theta+delta);                                           // Current in Amphere
Eo = V*cosd(delta) + Id*xd;                                         // Induced EMF in Volts
P = ((3*V*Eo*sind(delta))/xd)+(3*V^2*((1/xq)-(1/xd))*sind(2*delta))/2;                      // Power in Watts
T = ((3*V*Eo*sind(delta))/(xd*ws))+(3*V^2*((1/xq)-(1/xd))*sind(2*delta))/(2*ws);            // Torque in Newton-meter 

// when the machine is running as alternator, the magnitude of induced EMF = 323.38V. Let the new current will be Inew at lagging power factor thetanew. Now torque angle is 10.71 deg from phasor diagram Figure 6.51 and page no. 444 we get V+Id*xd*cos(delta)-Iq*xq*sin(delta) = Eo*cos(delta), 254+9.825*Id-1.3Iq = 317.75, 9.825*Id-1.3*Iq = 63.75, 7.56*Id-Iq = 49 and we have Id*xd*sin(delta)+Iq*xq*cosdelta) = Eo*sin(delta), 1.85*Id+6.88*Iq = 60.1, 0.27*Id+Iq = 8.74 by solving these two equations we get Idnew = 123.85/10.095 = 12.27A and Iqnew = 5.43A
Iqnew = 5.43;                                   // New current in Amphere
Idnew = 12.27;                                  // New current in Amphere
Inew = sqrt(Idnew^2 + Iqnew^2);                 // New total Current in Amphere
// We know that torque angle, tan(delta) = (I*xd*cos(theta))/(V+I*Xq*sin(theta)) so by calutaion for new power factor angle thetanew we get, tan(10.17) = (13.42*7*cos(thetanew))/(254+13.42*7*sin(thetanew)), 0.189(254+13.42*7*sin(thetanew) = 13.42*7*cos(thetanew), 48-93.94cos(thetanew)+17.75*sin(thetanew) = 0 by solving this equatuon we gwt thetanew = 49.5 lagging
thetanew = 49.5;                                    // New power factor angle in degree
pfnew = cosd(thetanew);                             // Power factor lagging


// DISPLAY RESULTS

disp("EXAMPLE : 6.21: SOLUTION :-");
printf("\n (a) Induced EMF, E = %.2f V \n",Eo)
printf("\n (b) Power (Torque) angle = %.2f degree \n",delta)
printf("\n     Power , P = %.2f W \n",P)
printf("\n     Torque , T = %.2f N-m \n",T)
printf("\n (c) when the machine is running as alternator requirements are:- \n\n     New Current = %.2f A\n",Inew)
printf("\n     Power factor = %.3f lagging \n",pfnew)

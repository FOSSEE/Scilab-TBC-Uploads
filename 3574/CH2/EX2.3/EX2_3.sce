// Example 2.3
// Computation of (a) Exciting current and its quadrature components 
// (b) Equalizing magnetic reactance and equivalent core loss resistance
// (c) Magnetizing current (d)repeat (a) and (b) for the transformer in the 
// step up mode
//Page No. 44

clc;
clear;
close;

Fp=0.210;               // Power factor
Pcore=138;              // Active power
VT=2400;                // Voltage applied to primary
VT1=240;                // 240-V primary voltage -- Second case


// (a)Exciting current and its quadrature components
Theta=acosd(Fp);         // Angle
Thetai=-Theta;           // As phase angle of applied voltage is zero
Ife=Pcore/VT;            // Exciting current
I0=Ife/Fp;               // Quadrature component
Im=tand(Thetai)*Ife;     // Quadrature component
Im=Im*-1;
      

// (b) Equalizing magnetic reactance and equivalent core loss resistance
XM=VT/Im;                  // Magnetic reactance
Rfe=VT/Ife;                // Core-loss resistance
XM=XM/1000;
Rfe=Rfe/1000;
//(c) Magnetizing current
Ife1=Pcore/VT1;            // Exciting current
I01=Ife1/cosd(Thetai);
IM1=tand(Thetai)*Ife1;     // Quadrature component
IM1=IM1*-1;

//(d) repeat (a) and (b) for the transformer in the step up mode
XM1=VT1/IM1;              // Magnetizing reactance
Rfe1=VT1/Ife1;            // Core-loss resistance



//Display result on command window
printf("\n Exciting current = %0.4f A ",Ife);
printf("\n Exciting current quadrature component 1 = %0.4f A ",I0);
printf("\n Exciting current quadrature component 2 = %0.3f A ",Im);
printf("\n Equivalent magnetic reactance = %0.2f kOhm ",XM);
printf("\n Equivalent core loss resistance = %0.1f kOhm ",Rfe);
printf("\n Exciting current in step-up mode = %0.3f A ",Ife1);
printf("\n Exciting current in step-up mode quadrature component 1 = %0.2f A ",I01);
printf("\n Exciting current in step-up mode quadrature component 2 = %0.2f A ",IM1);
printf("\n Equivalent  magnetic reactance in the step up mode  = %0.1f Ohm ",XM1);
printf("\n Equivalent core loss resistance in the step up mode = %0.1f Ohm ",Rfe1);

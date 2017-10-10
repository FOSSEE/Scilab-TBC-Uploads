// Example 6.11
// Application of an AC Norton Network
// from figure 6.25(a)
V_m=10; // Voltage phasor Magnitude
omega=5000; // Radian Frequency (rad/s)
V=complex(10,0); // Voltage Phasor in rectangular form
Z_R=280; // Ohms
Z_C=-%i*20; 
Z_L=%i*40;
Z_t=(Z_L*Z_R)/(Z_L+Z_R)+Z_C; // thevenin resistance
V_oc= (Z_R*V)/(Z_R+Z_L);
I_sc= V_oc/Z_t; // Relation Between thevenin's parameter
Y_t=1/Z_t; // Admittance
// Let Y= G + i*B
// Y_eq= Y_t+Y= (0.014+G)+i(B-0.048)
//  for |Y_eq| to be minimum
G=0;
B=0.048;
Y=G+%i*B;
Z=1/Y;
Y_eq= Y_t+Y;
V=I_sc/Y_eq;
disp(V,"Resultant terminal Voltage in rectangular form(Volts)=")

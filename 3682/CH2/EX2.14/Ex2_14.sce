// Exa 2.14

clc;
clear;

// Given data

// Fig. 2.25 shows circuit for current example
Vo = 6; // Volts
B = 200;
R1 =15; // kΩ
R2 = 2.8; // kΩ
Vcc = 12; // volts
Vbe = 0.7; // Volts

// Solution

Iref = (Vcc-Vbe)/R1;
I1 = Vbe/R2;

// At node A- Iref = Ic1 + 2IB + I1;
 //           Iref = Ic1*(1+2/B)+I1;
  // Therefore; we get Ic1 as-
Ic1 = (Iref-I1)/(1+2/B);
printf(' The value of Ic1 = %.3f mA.\n',Ic1 );
printf('  The value of Ic2 = Ic1 due to mirror effect.');
 // by KVL to outer loop we get Rc value
 // 12V = Ic2*Rc +Vo;
Rc = (Vcc-Vo)/Ic1;
printf('\n  The value of Rc = %d kΩ. \n',Rc);           

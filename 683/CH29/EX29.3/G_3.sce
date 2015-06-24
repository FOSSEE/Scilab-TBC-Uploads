// sum 29-3
clc;
clear;
//Let the constant gear ratio be G
G=2;
x=5.5^(1/3);
G1=1;
G2=x;
G3=x*x;
G4=x^3;
T7=18;
T8=T7*(x^3)/2;
T8=51;
T5=69/2.558;
T6=69-27;
T4=69/1.8825;
T3=69-T4;
T1=23;
T2=46;
T9=18;
G1=T2*T8/(T1*T7);
G2=T2*T6/(T1*T5);
G3=1;
G4=-T2*T8/(T1*T9);

  // printing data in scilab o/p window
  printf("T1 is %0.0f    ",T1);
  printf("\n T2 is %0.0f    ",T2);
  printf("\n T3 is %0.0f    ",T3);
  printf("\n T4 is %0.0f    ",T4);
  printf("\n T5 is %0.0f    ",T5);
  printf("\n T6 is %0.0f    ",T6);
  printf("\n T7 is %0.0f    ",T7);
  printf("\n T8 is %0.0f    ",T8);
  printf("\n T9 is %0.0f    ",T9);
  printf("\n G1 is %0.3f    ",G1);
  printf("\n G2 is %0.3f    ",G2);
  printf("\n G3 is %0.3f    ",G3);
  printf("\n G4 is %0.3f    ",G4);

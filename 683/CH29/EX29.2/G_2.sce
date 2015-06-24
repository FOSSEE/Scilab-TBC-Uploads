// sum 29-2
clc;
clear;
//Let reverse speed gear be RSG
RSG=5.5;
//Let T5/T6 = Z1
T1=2;
//Let T3/T7 = Z2
Z2=2.75;
T7=18;
T3=Z2*T7;
T3=50;
//Let T3/T1 =Z3
Z3=2.5;
T1=T3/Z3;
//Let T4/T2 = Z4
Z4=2.25/2;
T2=(T1+T3)/(Z4+1);
T4=T1+T3-T2;
//Let T5/T6=Z5
Z5=2;
T6=(T1+T3)/3;
T5=(T1+T3)-T6;
T7=18;
//let first gear ratio is G1
G1=50*47/(20*23);

//Let 2nd gear ratio is G2
G2=37*47/(33*23);
//Let 3rd gear ratio is G3
G3=1;
//Let reverse gear ratio is R
R=50*47/(18*23);

  // printing data in scilab o/p window
  printf("T1 is %0.0f    ",T1);
  printf("\n T2 is %0.0f    ",T2);
  printf("\n T3 is %0.0f    ",T3);
  printf("\n T4 is %0.0f    ",T4);
  printf("\n T5 is %0.0f    ",T5);
  printf("\n T6 is %0.0f    ",T6);
  printf("\n T7 is %0.0f    ",T7);
  printf("\n G1 is %0.3f    ",G1);
  printf("\n G2 is %0.3f    ",G2);
  printf("\n G3 is %0.1f    ",G3);
  printf("\n R is %0.3f    ",R);
  

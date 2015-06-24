//Chapter 22, Problem 9
clc;
E1=150;                         //generated e.m.f 1
phi1=0.10;                      //flux 1
phi2=0.1;                       //flux 2
N1=20;                          //armature speed 1
N2=25;                          //armature speed 2
N3=24;                          //armature speed 3
N4=20                           //armature speed 4
phi3=0.08;                      //flux 3
phi4=0.07;                      //flux 4
E2=(E1*phi1*N2)/(phi2*N1);                  //generated e.m.f 2
E3=(E1*phi3*N4)/(phi2*N1);                  //generated e.m.f 3
E4=(E1*phi4*N3)/(phi2*N1);                  //generated e.m.f 4
printf("(a) emf = %.1f V\n\n\n",E2);
printf("(b) emf = %d V\n\n\n",E3);
printf("(c) emf = %d V\n\n\n",E4);

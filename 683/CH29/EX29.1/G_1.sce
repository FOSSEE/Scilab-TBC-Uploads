// sum 29-1
clc;
clear;
Ts1=16;
Ts2=18;
Ts3=20;
Ts4=25;
Tr1=64;
Tr2=63;
Tr3=70;
Tr4=50;
//Let Nr1/Nr2=G1
G1=1+(Ts1/Tr1);
//Let Nr1/Ni=G2
G2=(Ts2/(Tr2*(1-(1/G1)+(Ts2/Tr2))));
//Let Ni/No=G3 (third gear)
G3=(1+(Ts3/Tr3))/((Ts3/Tr3)+G2);

//Let Ni/Nr1=G4
//The ratio calculations are done as above
G4=1.2857/0.2857;
//Let Ni/No =G5(second gear)
G5=-20/70;
//Let Ni/No=G6(first gear)
G6=1.2857/0.2857;
//Let Ni/No=G7(reverse gear)
G7=-1.7143/0.2857;

  // printing data in scilab o/p window
  printf("ratio for third gear is %0.3f    ",G3);
  printf("\n ratio for second gear is %0.4f   ",G5);
  printf("\n ratio for first gear is %0.1f   ",G6);
  printf("\n ratio for reverse gear is %0.3f   ",G7);
  

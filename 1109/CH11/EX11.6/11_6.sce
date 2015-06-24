clear;
clc;
Zoc=800;Zsc=600;
R2=sqrt((Zoc*Zoc)-(Zsc*Zoc));
R1=2*(Zoc-R2);
printf("The components of the network are:\n");
printf("  R1/2 = %d ohms\n",R1/2);
printf("  R2 = %d ohms",R2);

//Determine critical discruptive voltage for line and corona loss
clear;
clc;
//soltion
//given
Vph1=106/sqrt(3);//kV
Pc1=54;//kW//loss at Vph1
Vph2=110/sqrt(3);//kV
Pc2=95;//kW//loss at Vph2
Vphu=115/sqrt(3);//kV
printf("Pc α (Vph-Vdo)^2\n");
Vdo=poly(0,"Vdo");
A=roots((Vph1-Vdo)^2*Pc2-(Vph2-Vdo)^2*Pc1);
Vdo=54.123123;//after the solution of roots
Pcu=Pc1*((Vphu-Vdo)^2)/((Vph1-Vdo)^2)
printf("Corona loss at 115 kV= %.2f kW\n",Pcu);
printf("Critical discruptive voltage= %.2f kV",sqrt(3)*Vdo);

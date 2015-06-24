// Priority List Method 
clear
clc;
Fc1=1.1;//Fuel cost(1)=Rs 1.1/MBtu
Fc2=1;//Fuel cost(2)=1/MBtu
Fc3=1.2;//Fuel cost(3)=1.2/MBtu
P1max=600;
P1=P1max;
F1=600+7.1*P1+0.00141*(P1^2);//For P1= Pm1ax
Favg1=F1*Fc1/600;//Full load average production cost
P2max=450;
P2=P2max;
F2=350+7.8*P2+0.00195*(P2^2);//For P2= P2max
Favg2=F2*Fc2/450;//Full load average production cost
P3max=250;
P3=P3max;
F3=80+8*P3+0.0049*(P3^2);//For P3= P3max
Favg3=F3*Fc3/250;//Full load average production cost
mprintf("Priority List is as follows\n");
mprintf("Unit       Rs/MWhr     MinMW        Max MW\n")
mprintf(" 2           %.3f       100           %.0f \n",Favg2,P2max)
mprintf(" 1           %.4f       60            %.0f \n",Favg1,P1max)
mprintf(" 3           %.2f        50           %.0f \n\n",Favg3,P3max)
Fmax1=P1max+P2max+P3max;
Fmax2=P2max+P1max
Fmax3=P2max
mprintf("Unit Commitment Scheme is follows\n")
mprintf("Combination        Min.MW from Combination         Max.MW from Combination\n");
mprintf("2+1+3                 310                              %.0f   \n",Fmax1);
mprintf("2+1                   260                              %.0f   \n",Fmax2);
mprintf("2                     100                              %.0f   ",Fmax3);

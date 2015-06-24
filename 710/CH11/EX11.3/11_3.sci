clc();
clear;
//To calculate the minimum energy required to remove a neutron from Ca(A=43;Z=20)
//After removing one neutron from Ca(A=43;Z=20) it becomes Ca(A=42;Z=20)
M=41.958622;                 //mass of Ca(A=42;Z=20)
mn=1.008665;                 //mass of neutrom
C=M+mn;
E=42.95877;                  //mass of Ca(A=43;Z=20)
D=C-E;
B=D*931.5                    //Binding energy of neutron
printf("The binding energy of neutron is %f MeV",B);
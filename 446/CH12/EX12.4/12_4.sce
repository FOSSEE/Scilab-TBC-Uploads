clear
clc
disp('Exa-12.4');
N=30;Z=26;A=56;Mn=1.008665;Mp=1.007825;m=55.934939;c2=931.5; //given values and constants for case-1
B=((N*Mn)+(Z*Mp)-(m))*c2;                                  //binding energy(per nucleon)
printf('Binding nergy per nucleon for 26,56Fe30 is %.3f MeV\n',B/A);
N=146;Z=92;A=238;Mn=1.008665;Mp=1.007825;m=238.050785;c2=931.5;      //given values and constants for case-2
B=((N*Mn)+(Z*Mp)-(m))*c2;                             //binding energy(per nucleon)
printf('Binding nergy per nucleon for 26,56Fe30 is %.3f MeV',B/A);
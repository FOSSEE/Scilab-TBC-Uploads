clear
clc
disp('Exa-12.1(a)');
Z=2;A=4;N=A-Z;         // Given values
printf('The following method of representing atoms is followed throughout the chapter\n\t\t x,ySz\n where x=atomic number y=mass number z= Neutron Number S=symbol of the atom\n\n')
printf('The helium can be reperesented as %d,%dHe%d\n',Z,A,N);
disp('Exa-12.1(b)');
Z=50;N=66;A=Z+N;       //// Given values and standard formulae
printf('The helium can be reperesented as %d,%dSn%d\n',Z,A,N);
disp('Exa-12.1(c)');
A=235;N=143;Z=A-N;
printf('The helium can be reperesented as %d,%dU%d',Z,A,N);
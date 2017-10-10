//variable declaration
I=5;                       //Ionisation energy
A=4;                       //Electron Affinity
e=(1.6*10**-19)
E=8.85*10**-12            //epsilon constant
r=0.5*10**-19             //dist between A and B

//Calculations
C=-(e**2/(4*%pi*E*r*e))/10**10    //Coulomb energy
E_c=I-A+C                             //Energy required

//Result
printf('Coulomb energy =%0.2f eV\n',C)
printf('Energy required =%0.2f eV',E_c')

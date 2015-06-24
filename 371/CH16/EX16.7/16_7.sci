//Faults and Protection//
//Example 16.7//
V=415;//ac input voltage in volts//
Vdc=440;//supplied voltage to dc motor in volts//
Vh=30;//each selenium plate handling voltage in volts//
N=Vdc/Vh;//number of plates in series in each direction in the ckt//
N=15;
printf('number of plates in each branch=N=%f',N);
Nt=3*N;//total number of plates in series in the circuit//
printf('\ntotal number of plates=Nt=%f',Nt);
Ipa=136;//peak armature current in amperes//
T=30;//time constant in milliseconds//
R=0.175;//Armature resistance in Ohms//
L=T*R;//Armature circuit Inductance in milliHenry//
printf('\nArmature circuit inductance=L=%fmH',L);
Es=0.5*L*Ipa^2*10^-3;//Energy stored in armature circuit in wattsec//
printf('\nEnergy stored in armature circuit=Es=%fwattsec',Es);
Ed=Es/N;//Energy dissipated per plate in wattsec//
printf('\nEnergy dissipated per plate=Ed=%fwattsec',Ed);

clc;
P=200000; // rated power output of transformer
E1=11000; // primary side voltage
E2=400; // secondary side voltage
// initialising the results of the open circuit test performed on l v side
Vo=400; // open circuit voltage in V
Io=9; // no load current in A
Po=1500; // core loss in W
// initialising the results of short circuit test performed on h v side
Vsc=350; // voltage applied in short circuit test
Isc=P/(3*E1); // short circuit current
Psc=2100; // power dissipated in short circuit test
E2p=E2/sqrt(3); // per phase voltage
pop=Po/3; // per phase core loss
Ic=pop/E2p; // core loss current
Im=sqrt(Io^2-Ic^2); // magnetising component of current
R=E2p/Ic; // core loss resistance in ohm
X=E2p/Im; // magnetizing reactance
Rh=R*(E1/E2p)^2; // core loss resistance referred to h v side
Xh=floor(X*(E1/E2p)^2); // magnetizing component referred to h v side
printf('coreloss resistance and magnetizing reactance referred to h v side is %f ohm and %f ohm\n ',Rh,Xh);
Pscp=Psc/3; // ohmic loss per phase
Z=Vsc/Isc; // total impedance of transformer
Re=Pscp/Isc^2; // Total resistance of transformer refrred to high voltage side
Xe=sqrt(Z^2-Re^2); // total leakage impedance of transformer  referred to h v side
printf('transformer resistance and leakage impedance referred to h v side are %f ohm and %f ohm\n',Re,Xe);
n=(1-(pop+Pscp/2^2)/(P/6+pop+Pscp/2^2))*100; // efficiency at half load
printf('efficiency at half load is %f percent',n);

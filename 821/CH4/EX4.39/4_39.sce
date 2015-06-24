N=2;//No. of atoms or unit cells in BCC structure//
L=6.023*10^23;//Avagadro number//
a=4.291*10^-8;//Unit cell edge length in cm//
Na=23;//weight of Na//
p=(N*Na)/(L*a^3);//density of Na at room temperature in g/cm^3//
printf('Density of Na at room temperature=p=%fg/cm^3',p);
P=p*1.0398;//density of Na at -195degrees temperature in g/cm^3//
printf('\nDensity of Na at -195degrees temperature=P=%fg/cm^3',P);
a1=5.35*10^-8;//unit cell edge length in cm//
N1=(P*L*a1^3)/(Na);//No. of unitcells at -195degrees//
printf('\nNumber of unitcells at -195degrees=N1=%f',N1);
printf('\nAt -195degrees temperature Na have 4 unitcells which means it assumes an FCC structure.');

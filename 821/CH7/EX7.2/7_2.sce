i=3;//current passed through the solution in amps//
t=5;//amount of time current passed through in hours//
q=(i*t)/26.8;//quantity of electricity passed in farads//
printf('Quantity of electricity passed=q=%fFarads',q);
printf('\nIf all the current is used in the deposition of Ni,i.e 100percent efficiency 0.56 equivalents of Ni should be deposited at the cathode.');
N=0.56*0.60;//No. of equivalents of Ni deposited//
printf('\nNo. of equivalents of Ni deposited=N=%f',N);
w=58.71;//weight of Ni in grams//
wd=N*w/2;//weight of Ni actually deposited in grams//
printf('\nWeight of Ni actually deposited=wd=%fgrams',wd);
TA=32;//total area of the cathode in cm^2 for 2faces//
d=8.9;//density of Ni in gram per cm^3//
V=wd/d;//volume of the Ni deposited in cm^3//
printf('\nVolume of the Ni deposited=V=%fcm^3',V);
T=V/TA;//thickness of the deposit in cm//
printf('\nThickness of the deposit=T=%fcm',T);
printf('\nOut of 0.56Farad, 0.336Farad is used for Ni deposition\nhence 0.224Farad is used for liberation of hydrogen.');
printf('\n0.224 equivalent of hydrogen is=11.2*0.224=2.51litres.');

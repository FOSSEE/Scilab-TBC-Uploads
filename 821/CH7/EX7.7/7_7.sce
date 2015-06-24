EC=426;//equivalent conductance of HCl in ohm^-1cm^2//
tH=0.82;//transport number of H+//
tCl=0.18;//transport number of Cl-//
ICH=EC*tH;//ionic conductance of H+ in ohm^-1cm^2//
printf('Ionic conductance of H+=ICH=%fohm^-1cm^2',ICH);
ICCl=EC*tCl;//ionic conductance of Cl- in ohm^-1cm^2//
printf('\nIonic conductance of Cl-=ICCl=%fohm^-1cm^2',ICCl);
F=96500;
IMH=ICH/F;//ionic mobility of H+ in cm^2v^-1s^-1
printf('\nIonic mobility of H+=IMH=%f=36.20*10^-4cm^2v^-1s^-1',IMH);
IMCl=ICCl/F;//ionic mobility of H+ in cm^2v^-1s^-1
printf('\nIonic mobility of H+=IMCl=%f=7.95*10^-4cm^2v^-1s^-1',IMCl);

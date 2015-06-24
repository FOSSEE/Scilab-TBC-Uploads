SCsat=4.63*10^-6;//Specific conductance of saturated solution in ohm^-1cm^-1//
SCused=1.12*10^-6;//specific conductance of the water used in the experiment//
SC0Na2SO4=130.1;//specific conductance of Na2SO4 in ohm^-1cm^-1//
SC0BaCl2=139.9;//specific conductance of 1/2BaCl2 in ohm^-1cm^-1//
SC0NaCl=126.5;//specific conductance of NaCl in ohm^-1cm^-1//
SC0=SC0Na2SO4-SC0NaCl+SC0BaCl2;//effective specific conductance in ohm^-1cm^2//
printf('SC0=%fohm^-1cm^-1',SC0);
SC=SCsat-SCused;
printf('\nSpecific conductance of the experiment=SC=%f=3.51*10^-6ohm^-1cm^-1',SC);
S=(SC*1000)/SC0;//Solubility of the solution//
printf('\nSolubility of the solution=S=%f=2.437*10^-5gram equivalent per litre',S);
printf('\n1mol of BaSO4=2equivalents')
SBaSO4=S/2;//Solubility of the BaSO4 solution//
printf('\nSolubility of the BaSO4 solution=SBaSO4=%f=1.218*10^-5mol litre^-1',SBaSO4);

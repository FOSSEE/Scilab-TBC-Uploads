Kp=29.64;//dissociation pressure of CaCO3 in mm of Hg//
printf('CaCO3+C=CaO+2CO for the dissociation of CaCO3=CaO+CO2');
printf('\nKp1=PCO2=29.64/760=0.039atm\nFor the reduction of CO2 by C,CO2+C=2CO.Kp2=PCO^2/PCO2\nVolume percent=mol percent=mole fraction*100\nPCO=xCO*total pressure=xCO since total pressure=1atm\nxCO=PCO=0.724atm and xCO2=PCO2=0.276atm');
printf('\nKp2=PCO^2/PCO2=(0.724)^2/0.276=1.9atm');
Kp1=0.039;//dissociation pressure of CaCO3 in atm//
Kp2=1.9;
Kp3=Kp1*Kp2;//equilibrium constant for overall reaction in atm^2//
printf('\nEquilibrium constant for overall reaction=Kp3=%f=7.41*10^-2atm^2',Kp3);

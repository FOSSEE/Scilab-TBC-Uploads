//ques17
//efficiency of generator and plant
clear
clc
q=325000*(3398.3-856.0);//heat transferred to H2O/kg fuel in kJ/kg
qv=26700*33250;//higher heating value in kJ/kg
nst=q/qv*100;//efficiency of steam generator
w=81000*3600;//net work done in kJ/kg
nth=w/qv*100;//thermal efficiency
printf('Efficiency of generator = %.1f percent\n',nst);
printf(' Thermal Efficiency = %.1f percent\n',nth);

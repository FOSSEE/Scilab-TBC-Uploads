clc;funcprot(0);//EXAMPLE 20.44
// Initialisation of Variables
Cbl=240;........//Mean blade velocity in m/s
Cf=190;.........//Air flow velocity in m/s
al1=45;al2=14;.........//Blade angels in degrees
rho=1;.........//Density of air in kg/m^3
//Calculations 
pr=(1/2)*(rho*Cf*Cf/(10^5))*(((tan(al1*%pi/180))^2)-((tan(al2*%pi/180))^2));.......//Pressure rise in bar
disp(pr,"Pressure rise in bar:")
W=Cbl*Cf/1000*((tan(al1*%pi/180))-(tan(al2*%pi/180)));.............//Work done per kg of air in kW
disp(W,"Work done per kg of air in kW:")

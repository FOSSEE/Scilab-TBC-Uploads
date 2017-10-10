clc
clear
//initialisation of variables
Load= 50000 //N
torque= 1200 //Nm
d= 60//mm
t= 1.5 //mm
alpha= 60 //degrees 
//CALCULATIONS
BM= Load*t
axialLoad= (Load*4)/(%pi*d^2)
bendingmoment= (BM*d*64)/(%pi*d^4*2)
Ts= axialLoad+bendingmoment
shearstress= (torque*10^3*d*32)/(2*%pi*d^4)
sigman= -Ts*(cosd(alpha-30))^2+shearstress*cosd(alpha-30)*sind(alpha-30)+shearstress*cosd(alpha-30)*sind(alpha-30)
T= -Ts*sind(alpha)*cosd(alpha)-shearstress*(sind(alpha))^2+shearstress*(cosd(alpha)^2)
//RESULTS
printf ('direct stress= %.1f N/mm^2',sigman)
printf (' \n Shear stress=%.1f N/mm^2',T)
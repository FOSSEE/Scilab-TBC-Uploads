//CAPTION: Calculate_the_avalanche-zone_velocity
//chapter_no.-8,  page_no.-334
//Example_no.8-3-1

clc;
J=20*(10^3);//current_density
q=1.6*(10^-19);
NA=2*(10^15);//Doping_Concentration
vs=J/(q*NA);
disp(vs,'avalanche-zone_velocity(in cm/s)is =');

disp('This means that the avalanch-zone velocity is much larger than the scattering-limited velocity');
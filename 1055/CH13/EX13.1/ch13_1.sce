// Determine the symmetrical components of voltages.
clear
clc;
Va=100*(cosd(0) + %i*sind(0));
Vb=33*(cosd(-100) + %i*sind(-100));
Vc=38*(cosd(176.5) + %i*sind(176.5));
L=1*(cosd(120) + %i*sind(120));
Va1=((Va + L*Vb + (L^2)*Vc))/3;
Va2=((Va + L*Vc + (L^2)*Vb))/3;
Vco=((Va + Vb + Vc))/3;
disp(Va1,"Va1=");
disp(Va2,"Va2=");
disp(Vco,"Vco=");

clc;
V=1000; // Speed of aircraft in kmph
p1=0.35; // Ambient pressure in bar
T1=258; // Ambient temperature in kelvin
V1=V*1000/3600; // unit conversion kmph into m/s
p=1.01325; // Atmospheric pressure in bar
Cpo=1.0035; // Specific heat at constant pressure in kJ/kg K
k=1.4; // Index of compression process
T2=T1+(V1^2)/(2*Cpo*10^3); // The temperature after leaving inlet diffuser
p2=p1*(T2/T1)^(k/(k-1)); // Pressure after leaving inlet diffuser
r=p/p2; // Pressre ratio of compressor required for pressurization
disp ("K",T2,"The temperature after leaving inlet diffuser = ");
disp (r,"Pressre ratio of compressor required for pressurization = ");

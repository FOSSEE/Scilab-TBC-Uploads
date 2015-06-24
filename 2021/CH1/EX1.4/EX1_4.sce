//Finding of Diameter of water droplet
//Given
st=0.716;                   //Surface Tension in N/m
p=0.147*10^4;               //Pressure in N/m^2
//To Find 
d=4*st/p;                   //Dia in meter 
d1=d*10^2;                  //Dia in centimeter 
d2=d*10^3;                  // Dia in millimeter
disp("Diameter ="+string(d)+" meter");
disp("Diameter ="+string(d1)+" Centi meter");
disp("Diameter ="+string(d2)+" Milli meter");

clc

M_He=1.8;
y_He=5/3;
y_air=1.4;
p2=30; // kPa

// (A/At)=(1+(y-1)/2*M^2)^((y+1)/(y-1))/M^2*(2/(y+1))^((y+1)/(y-1))

//    = (1+1/3*1.8^2)^(4)/1.8^(2)*(3/4)^(4) = 1.828 for helium

//    = (1+0.2*M^2)^6/M^2*1/1.2^6    for air
// Hence by trial 

M1=1.715;
disp("Mach number before the shock =")
disp(M1)

p1=p2/((2*y_air*M1^2-(y_air-1))/(y_air+1));

p0_1=p1*(1+(y_air-1)/2*M1^2)^(y_air/(y_air-1));

disp("Stagnation Pressure =")
disp(p0_1)
disp("kPa")

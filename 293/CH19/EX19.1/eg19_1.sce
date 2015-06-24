//a
efficiency = 0.9; 
Pi = 200*746/efficiency; //input power 
x = 11; //reactance of the motor
V1 = 2300/sqrt(3); //voltage rating 
delta = 15*%pi/180; //power angle
Ef = Pi*x/(3*V1*sin(delta)); //the induced excitation voltage per phase 
disp("a")
disp(Ef,"the induced excitation voltage per phase = ")

//b
z = complex(0,x); //impedance of the motor 
ef = complex(Ef*cos(-delta),Ef*sin(-delta));

Ia = (V1 - ef)/z ; //armature current 
disp("b")
disp(Ia,"armatur current = ")

//c
theata = atan(imag(Ia)/real(Ia)); //phase difference between Ia and V1
pf = cos(theata); //power factor 

disp("c")
disp(pf,"power factor = ")

if sin(theata)> 0  then
    disp("leading")
else
    disp("lagging")
end
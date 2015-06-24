clc;
a=6;     //amplitude in cm
n=9;     //frequency in Hz.
vmax=2*(%pi)*n*6;  //calculating velocity in cm/sec
acc=-((18*(%pi))^2)*6;  //calculating acc. in m/sec square
disp(vmax,"Maximum velocity in cm/sec = ");  //displaying result
disp("Velocity at extreme position = 0");   //displaying result
disp("Accelaration at mean position = 0");  //displaying result
disp(acc,"Accelaration at extreme position in m/sec square = ");  //displaying result
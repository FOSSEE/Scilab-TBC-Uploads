Pr = 1.033e05; // Required Pressure in bar
function y = pressure(p)
  y = p^(-0.714);
endfunction;
g = 9.81; // Acceleration due to gravity in m/s2
H = ((2.5e05^0.714)/g)*intg(0,Pr,pressure); // Depth of atmosphere required in m
disp("Km",H/1000,"The depth of atmosphere required is ") 
  
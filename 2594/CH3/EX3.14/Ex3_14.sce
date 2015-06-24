clc
disp("ND_x = ((10^17)-(10^18*x))") //donor concentration in an N type semiconductor
disp("differentiating above equation with resprct to x")
disp("d[ND_x]/dx = (-10^18) cm^-4")
disp("now, electric field is given by ")
disp("E_x = -(VT/ND_x)*(d[ND_x]/dx) = (0.0259*10^18)/((10^15)-(10^18*x))")// equation for electric field
disp("for x = 0")
x = 0
E_x = (0.0259*10^18)/((10^15)-(10^18*x))
disp("E_x = "+string(E_x)+"V/cm")
disp("for x = 1*10^-4 cm")
x = 1*10^-4
E_x = (0.0259*10^18)/((10^15)-(10^18*x))
disp("E_x = "+string(E_x)+"V/cm")

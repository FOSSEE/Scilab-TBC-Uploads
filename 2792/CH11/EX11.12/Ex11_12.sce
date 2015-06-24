clc
R =.33
disp("R = "+string(R)) //initializing value of reflection coefficient
alpha_R = 20
disp("alpha_R = "+string(alpha_R)+"cm^-1") //initializing value of absorption loss coefficient
L= (-1/alpha_R)*log(R)
disp("The length of the cavity is ,L= (-1/alpha_R)*log(R)= "+string(L)+"cm")//calculation

 


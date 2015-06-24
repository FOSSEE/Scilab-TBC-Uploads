d = 1; l = 1; // Assuming
A_ACDB = (%pi/4)*(1/3)*((1.05*d)^2)*10.5*l - (%pi/4)*(1/3)*d^2*10*l ; // Area of ABCD
A_AEFB = (%pi/4)*(1/3)*((1.1*d)^2)*11*l - (%pi/4)*(1/3)*d^2*10*l;
t = 100*(A_ACDB/A_AEFB);
disp("degree Celcius",t,"The straight bore thermometer reading would e")
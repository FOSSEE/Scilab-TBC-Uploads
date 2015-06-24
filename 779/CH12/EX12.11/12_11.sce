h1 = 3285; h2s = 3010; h3 = 3280; h4s = 3030;
h4 = h3-0.83*(h3-h4s);
h5s = 2225;
h5 = h4-0.83*(h4-h5s);
h6 = 162.7; h7 = h6;
h8 = 762.81;
h2 = h1-0.785*(h1-h2s);
m = (h8-h7)/(h4-h7);
n_cycle = ((h1-h2)+(h3-h4)+(1-m)*(h4-h5))/((h1-h8)+(h3-h2))
disp("kg/s",m,"Steam flow at turbine inlet is")
disp("%",n_cycle*100,"cycle efficiency is")
h1 = 57; h2 = h1;
h3 = 42;
W1 = 0.0065; W2 = 0.0088; W3 = W2;
t2 = 34.5; v1 = 0.896;
n = 1500; // seating capacity of hall
a = 0.3; // amount of out door air suplied
G = (n*a)/0.896 ; // Amount of dry air suplied
CC = (G*(h2-h3)*60)/14000; // in tonns
R = G*(W2-W1)*60;
disp("tonnes",CC,"Capacity of the cooling coil in tonnes")
disp("kg/h",R,"Capacity of humidifier")

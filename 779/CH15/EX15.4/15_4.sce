h1 = 82; h2 = 52; h3 = 47; h4 = 40;
W1 = 0.020; W2 = 0.0115; W3 = W2;
v1 = 0.887;
v = 3.33; // amount of free sir circulated
G = v/v1;
CC = (G*(h1-h3)*3600)/14000; // in tonns
R = G*(W1-W3);
disp("tonnes",CC,"Capacity of the cooling coil in tonnes")
disp("kg/s",R,"Rate of water vapour removed is")
W1 = 0.0058; W2 = 0.0187; 
h1 = 35; h2 = 90;
G12 = 1/2; // G12 = G1/G2 
W3 = (W2+G12*W1)/(1+G12);
h3 = (2/3)*h2 + (1/3)*h1;
disp("Final condition of air is given by")
disp("kg vap./kg dry air",W3,"W3 = ")
disp("kJ/kg dry air",h3,"h3 = ")
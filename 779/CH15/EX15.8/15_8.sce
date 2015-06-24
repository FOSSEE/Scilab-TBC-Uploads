twb1 = 15.2; twb2 = 26.7; tw3 = 30;
h1 = 43; h2 = 83.5; hw = 84; mw = 1.15;
W1 = 0.0088; W2 = 0.0213;
hw3 = 125.8; hm = 84;
G = 1;
hw34 = (G/mw)*((h2-h1)-(W2-W1)*hw);  // hw3-hw4
tw4 = tw3-(hw34/4.19);
A = tw4-twb1;
R = tw3-tw4;
x = G*(W2-W1);
disp("degree",tw4,"Temperature of water leaving the tower is")
disp("kg/kg dry sir",x,"Fraction of water evoporated is")
disp("degree",R,"Range of cooling water is")
disp("degree",A,"Approach of cooling water is")


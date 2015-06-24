P2 = 1554.3;
P1 = 119.5;
Pi = sqrt(P1*P2);
h1 = 1404.6; h2 = 1574.3; h3 = 1443.5; h4 = 1628.1;
h5 = 371.7; h6 = h5; h7 = 181.5;
w = 30; // capacity of plant
m2_dot = (3.89*30)/(h1-h7);
m1_dot = m2_dot*((h2-h7)/(h3-h6));
Wc_dot = m2_dot*(h2-h1)+m1_dot*(h4-h3);
COP = w*3.89/Wc_dot;
// single stage
h1_ = 1404.6; h2_ = 1805.1;
h3_ = 371.1; h4_ = h3_;
m_dot = (3.89*30)/(h1_-h4_);
Wc = m_dot*(h2_-h1_);
COP_ = w*3.89/Wc;
IW = (Wc-Wc_dot)/Wc_dot;
ICOP = (COP-COP_)/COP_
disp("%",IW*100,"Increase in work of compression is")
disp("%",ICOP*100,"Increase in COP for 2 stage compression is")
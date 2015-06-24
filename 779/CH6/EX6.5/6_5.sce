T1 = 873;
T2 = 313;
T3 = 253;
Q1 = 2000e03; // In joule
W = 360e03; // in joule
// Part (a)
e_max = 1-(T2/T1);
W1 = e_max*Q1;
COP = T3/(T2-T3);
W2 = W1-W;
Q4 = COP*W2;
Q3 = Q4+W2;
Q2 = Q1-W1;
disp("J",Q2+Q3,"The heat rejection to the 40 degree reservior is")
// Part (b)
e_max_ = 0.4*e_max;
W1_ = e_max_*Q1;
W2_ = W1_-W;
COP_ = 0.4*COP;
Q4_ = COP_*W2_;
Q3_ = Q4_+W2_;
Q2_ = Q1-W1_;
disp("J",Q2_+Q3_,"The heat rejection to the 40 degree reservior is")
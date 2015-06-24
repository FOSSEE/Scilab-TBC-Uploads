//As scilab does not symbolic computations, this example is solved taking N=5
prob = 1/5 //probability that a letter is put into the right envelope
EX1 = 1*prob+0*(1-prob);
EX2 = 1*prob+0*(1-prob);
EX3 = 1*prob+0*(1-prob);
EX4 = 1*prob+0*(1-prob);
EX5 = 1*prob+0*(1-prob);
EX= EX1 + EX2+ EX3 +EX4 + EX5;
disp(EX, "Thus, the expectation is")
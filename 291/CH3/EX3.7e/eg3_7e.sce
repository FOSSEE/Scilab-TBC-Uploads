criminal_char = 0.9
convinced= 0.6;
pop_char = 0.2;
prob = (convinced*criminal_char) /((convinced*criminal_char) + (pop_char*(1-convinced)));
disp(prob, "The required probability is")
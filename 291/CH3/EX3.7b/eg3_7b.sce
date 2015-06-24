accident_prone= 0.4;
nonaccident_prone= 0.2;
pop_accident = 0.3;
prob_of_accident = pop_accident*accident_prone + (1-pop_accident)*nonaccident_prone;
prob = pop_accident * accident_prone /prob_of_accident;
disp(prob, "The required probability is")
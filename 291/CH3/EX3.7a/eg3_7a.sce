accident_prone= 0.4;
nonaccident_prone= 0.2;
pop_accident = 0.3;
prob = pop_accident*accident_prone + (1-pop_accident)*nonaccident_prone;
disp(prob, "The required probability is ");
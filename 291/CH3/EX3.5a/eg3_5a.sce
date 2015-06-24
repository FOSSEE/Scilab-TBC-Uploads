white_balls= 6;
black_balls = 5;
total = white_balls + black_balls;
probability_whiteandblack = white_balls*black_balls/(total*(total-1));
probability_blackandwhite = white_balls*black_balls/(total*(total-1));
reqd_probability = probability_whiteandblack + probability_blackandwhite;
disp(reqd_probability, "Thus, the required probability is")
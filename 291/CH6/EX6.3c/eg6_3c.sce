ideal_num = 150;
actual_num = 450;
attend = 0.3;
tolerance = 0.5
disp(1-cdfnor("PQ",ideal_num+tolerance, actual_num*attend, sqrt(actual_num*attend*(1-attend)) ))
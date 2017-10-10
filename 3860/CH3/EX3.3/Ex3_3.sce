//Example 3.3 Expression Mapping
clc; //clears the console window
clear; //clears the variable browser
disp('F = AB'' + AC + A''BC''')
disp('F = AB''(C'' + C) + AC(B'' + B) + A''BC''')
disp('F = AB''C'' + AB''C + AB''C + ABC + A''BC''')
disp('m4 + m5 + m5 + m7 + m2')
disp('m2 + m5 + m7 + m4')//removing duplicates and reordering
disp('      A''B''  A''B  AB  AB''')
disp('C''     -    1    -    1')
disp('C      -    -    1    1') //The kmap for F is displayed//


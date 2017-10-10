//EX3_4: Simplify A'B + A'B'C'D' + ABCD'

//clears the screen
clc

//clears already existing variables
clear

disp('A''B + A''B''C''D'' + ABCD''')
disp('= A''(B + B''C''D'') + ABCD''')
disp('= A''(B + C''D'') + ABCD''')
disp('= B(A'' + ACD'') + A''C''D''')
disp('= B(A'' + CD'') + A''C''D''')
disp('= A''B + BCD'' + A''C''D''')

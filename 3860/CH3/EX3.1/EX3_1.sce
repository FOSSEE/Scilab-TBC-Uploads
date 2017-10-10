//Example 3.1: Combining minterms in karnaugh map
clc; //clears the console
clear; //clears all existing variables
disp(' The given function is having three input variables A , B and C')
disp(' the minterms in adjacent squares can always be combined using the adjacency property')
disp(' m0 + m1 : A''B''C''+ A''B''C = A''B''')
disp(' m4 + m6 : AB''C'' + ABC'' = AC''')
disp(' m1 + m5 : ABC + AB''C = AC')
disp(' m0 + m4 : A''B''C'' + AB''C'' = B''C''')
disp(' m1 + m5 : A''B''C + AB''C = B''C')

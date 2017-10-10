//Example 9.3: Reduction of state table 
clc // Clears the console
disp("Given State Table")
disp("q |    x=0         x=1   |    z")
disp('--------------------------------')
disp("A |     C           D    |    1")
disp("B |     C           D    |    0")
disp("C |     B           D    |    1")
disp("D |     C           A    |    1")
disp('step 1 produces five SP Partitions')
disp('P1 = (AB)(C)(D)')
disp('P1 = (ABC)(D)')
disp('P1 = (AD)(B)(C)')
disp('P1 = (A)(BC)(D)')
disp('P1 = (ABD)(C)')

disp('P1 = (AB)(C)(D)')
disp('P1 = (AB)(C)(D)')
disp('The chart is different, because the pairings that are automatically X''d are different.')
disp('None of the conditions can be satisfied, and thus, no states can be combined and state table cannot  be reduced.')




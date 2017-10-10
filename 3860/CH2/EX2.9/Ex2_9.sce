//Example 2.9: Finding reduced boolean expression using Boolean laws
clc // Clears the console
disp('Z2 = A''BCD + AB''CD + ABC''D + ABCD'' + ABCD')
disp('the last terms ABCD can be combined with each of the others. Thus, if we make four copies of it and then utilize for times we obtain')
disp('Z2 = BCD + ACD + ABD + ABC')
disp('No further simplification is possible; this is minimum SOP form')
disp('Z1 = A''BCD + AB''CD + ABC''D + ABCD'' ')
disp('In case of Z1 no simplification is possible it has 16 literals whereas expression for Z2 only has 12 literals.')

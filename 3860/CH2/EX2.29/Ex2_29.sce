//Example 2.29: Manipulation POS expression into SOP Expression.
clc // Clears the console
disp('(A + B'' + C) ( A + B + D) (A'' + C'' + D'')')
disp(' = [A + (B'' + C)(B + D)](A'' + C'' + D''')
disp(' = (A + B''D + BC)(A'' + C'' + D'')')
disp(' = A ( C''+ D'') + A''(B''D + BC )')
disp(' = AC'' + AD'' + A''B''D + A''BC')
//the reduced expression is displayed.

//EX3_9: Show that
//A'BC'D + (A' + BC)(A + C'D') + BC'D + A'BC' 
//                  = ABCD + A'C'D' + ABD + ABCD' + BC'D

//clears the screen
clc

//clears already existing variables
clear

//First, we will reduce the left side
disp('LHS = A''BC''D + (A'' + BC)(A + C''D'') + BC''D + A''BC''')
//Eliminate A''BC''D'' using absorption law
disp('= (A'' + BC)(A + C''D'') + BC''D + A''BC''')
//multiply out using (3-3)
disp('= ABC + A''C''D'' + BC''D + A''BC''')
//eliminate A''BC'' by consensus
disp('= ABC + A''C''D'' + BC''D')
//Now, we will reduce right side
disp('RHS = ABCD + A''C''D'' + ABD + ABCD'' + BC''D')
//Combining ABCD and ABCD'
disp('= ABC + A''C''D'' + ABD + BC''D')
//eliminate ABD by consensus
disp('= ABC + A''C''D'' + BC''D')
//Because both sides of the original equation were independently reduced to the same expression, the original equation is valid.

//EX3_5: Simplify WX + XY + X'Z' + WY'Z'

//clears the screen
clc

//clears already existing variables
clear

disp('WX + XY + X''Z'' + WY''Z''')
//add WZ' by consensus theorem
disp('= WX + XY + X''Z'' + WY''Z'' + WZ''')//eliminate WY'Z'
disp('= WX + XY + X''Z'' + WZ''')      //eliminate WZ'
disp('= WX + XY + X''Z''')

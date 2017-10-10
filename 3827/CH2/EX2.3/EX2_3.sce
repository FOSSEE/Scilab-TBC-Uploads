//EX2_3 Simplify Z = (AB + C)(B'D + C'E') + (AB + C)'

//clears the screen
clc

//clears already existing variables
clear

disp('Z = (AB + C)(B''D + C''E'') + (AB + C)''')
disp('Let X = (AB + C)''    X'' = AB + C')
disp('and Y = B''D + C''E''')
disp('Z = X''Y + X')
//By the elimination theorem i.e. X + X'Y = X + Y
disp('Z = Y + X')
disp('Z = B''D + C''E'' + (AB + C)'' ')

//EX2_2 Simplify Z = [A + B'C + D +EF][A + B'C + (D + EF)']

//clears the screen
clc

//clears already existing variables
clear

disp('Z = [A + B''C + D + EF][A + B''C + (D + E''F)]')
disp('Let X = A + B''C')
disp('and Y = D + EF     Y'' = (D + EF)''')
disp('Z = [X + Y][X + Y'']')
//By uniting theorem i.e. (X + Y)(X + Y') = X
disp('Z = X ')
disp('Z = A + B''C')

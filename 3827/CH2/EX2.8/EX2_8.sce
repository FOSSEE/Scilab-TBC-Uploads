//EX2_8 To find complement of (AB' + C)D' + E

//clears the screen
clc

//clears already existing variables
clear

//By using 2.12 i.e. (X + Y)' = X'Y'
disp('((AB'' + C)D'' + E)'' = [(AB'' + C)D'']''E''')
//By using 2.13 i.e. (XY)' = X' + Y'
disp('= [(AB'' + C) + D]E''')
//Using 2.12
disp('= [(AB'')'' C'' + D]E''')
//Using 2.13
disp('= [(A'' + B) C'' + D]E''')

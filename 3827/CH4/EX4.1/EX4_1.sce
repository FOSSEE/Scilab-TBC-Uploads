//EX4_1:Find the minterm expansion of f(a, b, c, d) = a′(b′ + d) + acd′.

//clears the screen
clc

//clears already existing variables
clear
disp('f = a''b'' + a''d + acd''');
disp('= a''b''(c + c'')(d + d'') + a''d(b + b'')(c + c'') + acd''(b + b'')');
disp('= a''b''c''d'' + a''b''c''d + a''b''cd'' + a''b''cd + a''bc''d + a''bcd + abcd'' + ab''cd''');
disp('f = a''b''c''d'' + a''b''c''d + a''b''cd'' + a''b''cd + a''bc''d + a''bcd + abcd'' + ab''cd''');
disp('f = Σ m(0, 1, 2, 3, 5, 7, 10, 14)');

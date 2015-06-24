clear ; clc;
xdel ( winsid ()); // c l o s e a l l windows
mode (0)
x1 = [1; 2; 3]
x2 = [1; 0; 1]
x3 = [2; 2; 4]
A = [x1 x2 x3 ];
disp (A, ' [ x1 : x2 : x3 ] =' );
disp ( clean ( det (A)), ' de t ( [ x1 : x2 : x3 ] ) =' ); // s i n g u l a r
x3 = [2;2;2]
A = [x1 x2 x3 ];
disp (A, ' [ x1 : x2 : x3 ] =' );
disp (det(A), ' de t ( [ x1 : x2 : x3 ] ) =' );

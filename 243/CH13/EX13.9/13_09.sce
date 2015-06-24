//Example No. 13_09
//Optimum step size
//Pg No. 444
clear ; close ; clc ;

x = 0.8 ;
h1 = 0.05 ;
y1 = 5.8410870 ;
h2 = 0.025 ;
y2 = 5.8479637 ;

//d = 4
h = ((h1^4 - h2^4)*10^(-4)/(2*(y2 - y1)))^(1/4)
disp(h,'h = ','for four decimal places')

//d = 6
h = ((h1^4 - h2^4)*10^(-6)/(2*(y2 - y1)))^(1/4)
disp(h,'h = ','for six decimal places')
disp('Note-We can use h = 0.01 for four decimal places and h = 0.004 for six decimal places')
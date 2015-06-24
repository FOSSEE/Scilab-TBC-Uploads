Vo = 8.4;
Vh = 14;
n1 = Vo/22.4; n2 = Vh/22.4;
R = 8.31;
x1 = n1/(n1+n2);
x2 = n2/(n1+n2);
S = -R*(n1*log(x1)+n2*log(x2));
disp("J/K",S,"Entropy change for the process is")
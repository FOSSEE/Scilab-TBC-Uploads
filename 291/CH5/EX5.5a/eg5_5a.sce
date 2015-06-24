u= 3;
var = 16;

prob1 = cdfnor("PQ", 11, u, sqrt(var));
disp(prob1, " P{X<11}");
prob2 = 1- cdfnor( "PQ", -1, u, sqrt(var));
disp(prob2, "P{X>-1}");
prob3= cdfnor("PQ", 7, u, sqrt(var)) - cdfnor("PQ", 2, u, sqrt(var));
disp(prob3, "P{2<X<7}");
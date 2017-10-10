//ques-3.6
//Calculating number of polyethylene molecules formed
clc
m=28;//mass of ethylene polymerised (in g)
deg=500;//average degree of polymerisation of PE
n=(28*(6.023/28))/deg;//number of PE molecules (x10^23)
printf("The number of polyethylene molecules formed are %.4f x 10^21.",n*100);

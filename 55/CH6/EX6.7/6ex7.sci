disp('four objects are given (a,b,c,d) and three are taken at a time')  
combinations = factorial(4)/(factorial(4-3)*factorial(3));
disp(combinations,'number of combinations of the four objects given')
k=factorial(3);  //number of permutations of objects in a combination
permutations = combinations*k;
disp(permutations,'total number of permuatations for the problem')
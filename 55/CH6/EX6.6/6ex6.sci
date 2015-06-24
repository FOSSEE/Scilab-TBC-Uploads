function [k]= funct1(n,p,q)
k= factorial(n)/(factorial(p)*factorial(q));
endfunction
k=funct1(7,3,2)  //in "BENZENE" three letters are alike(the three Es) and two are alike (the two Ns)
disp(k,'The number of seven-letter words that can be formed using letters of the word BENZENE')

disp('a set of 4 indistinguishable red coloured flags, 3 indistinguishable white flags and a blue flag is given')
j=funct1(8,4,3); 
disp(j,'number of different signals ,each consisting of eight flags')
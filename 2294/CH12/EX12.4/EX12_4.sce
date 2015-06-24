//Example 12.4
//Probability to find the required sample size.
disp('Let A be the event of choosing a sample size of 6 containing two red, one green , two blue and one white blue ball.');
funcprot(0)
function c = combination ( n , r )
c = prod ( n : -1 : n-r+1 )/ prod (1:r)
endfunction
disp('The number of combination of choosing 6 balls from 14 balls is 14 C 6 ways')
disp('The number of combination of choosing 2 red balls from 4 balls is 4 C 2 ways')
disp('The number of combination of choosing 1 from 3 green balls is 3 C 1 ways')
disp('The number of combination of choosing 2 from 5 green balls is 5 C 2 ways')
disp('The number of combination of choosing 1 from 2 white balls is 2 C 1 ways')
disp('P(A)={(4 C 2)*(3 C 1)*(5 C 2)*(2 C 1)}/(14 C 6)=')
p=(combination(4,2)*combination(3,1)*combination(5,2)*combination(2,1))/combination(14,6);
disp(p);

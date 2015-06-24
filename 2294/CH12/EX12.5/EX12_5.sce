//Example 12.5
//Probability to find the first white ball on the 3rd draw.
disp('Let A be the event of drawing the first white ball at the third draw from 15 balls ')
disp('Let W be the event of drawing a 10 white balls')
disp('Let B be the event of drawing a 5 black balls')
disp('Hence we have 1st draw :B  2nd Draw :B  3rd Draw :W');
funcprot(0)
function c = combination ( n , r )
c = prod ( n : -1 : n-r+1 )/ prod (1:r)
endfunction
disp('P(A)={(5 C 1)*(5 C 1)*(10 C 1)}/{(15 C 1)*(15 C 1)*(15 C 1)}=')
p=(combination(5,1)*combination(5,1)*combination(10,1))/(combination(15,1)*combination(15,1)*combination(15,1))
disp(p)

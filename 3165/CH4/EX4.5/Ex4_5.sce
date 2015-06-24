//Example 4 . 5
//To De s ign an ana l o g Chebyshev F i l t e r wi th Given S p e c i f i c a t i o n s
clc ;
os =2;
op =1;
ap =3; //db
as =16; //db
e1 =1/ sqrt (2) ;
l1 =0.1;
epsilon = sqrt (1/( e1 ^2) -1);
lambda = sqrt (1/( l1 ^2) -1);
N= acosh ( lambda / epsilon )/ acosh (os/op);
disp ( ceil (N), ' Order o f the f i l t e r , N =' );

rk = 14;
k = 0.06
rc = k*(14-1)+1;
g = 1.4;
n_diesel = 1-((1/g))*(1/rk^(g-1))*((rc^(g-1))/(rc-1));
disp("%",n_diesel*100,"Air standard efficiency is")


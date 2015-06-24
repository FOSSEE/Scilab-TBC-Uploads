exec("degree_rad.sci",-1)

//Given that
M = 1  //(say) to directly get the answer
Mc = 0.30*M
Vc = [5*cos(dtor(40)), 5*sin(dtor(40))]
Mb = 0.20*M
Ma = 0.50*M

//Sample Problem 9-7
printf("**Sample Problem 9-7**\n")
deff('[f] = eq_maker(V)', 'f = Ma*V(1)*[cos(dtor(140)),sin(dtor(140))] + Mb*V(2)*[0,-1] + Mc*Vc')
V= fsolve([0,0], eq_maker)
printf("The velocity of A is %dm/s & velocity of B is %fm/s after the collision in the given directions", V(1), V(2))
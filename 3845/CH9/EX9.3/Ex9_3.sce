//Example 9.3
g=9.80;//Acceleration due to gravity (m/s^2)
F_o=45*g;//Combined weight of wheelbarrow and load, m*g, (N)
l_o=7.50*10^-2;//Output lever arm (m)
l_i=1.02;//Input lever arm (m)
F_i=F_o*l_o/l_i;//Force to be exerted (N)
printf('a.Upward force to be exerted = %0.1f N',F_i)
N=F_o-F_i;//Normal force (N)
printf('\nb.Force exerted on the ground by the wheelbarrow = %0.1f N',N)
//Discussion
MA=l_i/l_o;//Mechanical advantage
printf('\nDiscussion : \nMechanical advantage = %0.1f',MA)
//Answer varies due to round off error
//Openstax - College Physics
//Download for free at http://cnx.org/content/col11406/latest

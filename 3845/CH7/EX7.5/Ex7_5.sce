//Example 7.5
f=5;//Friction force (N), See Example 7.3
initial_KE=3.75;//Initial kinetic energy (J), See Example 7.2
W_net=92;//Net work done on the package (J), See Example 7.3
//This is equal to the energy acquired due to the pushing
W_fr=-(initial_KE+W_net);//Work by friction (J)
theta=180;//Direction of friction force (opposite to displacement)(deg)
d_prime=W_fr/(f*cosd(theta))
printf('Distance to stop = %0.1f m',d_prime)
//Answer varies due to round off error
//Openstax - College Physics
//Download for free at http://cnx.org/content/col11406/latest

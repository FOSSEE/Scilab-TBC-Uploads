//Example 28.1
delta_t_0=1.52*10^-6;//Proper time for life of the muon (s)
c=3*10^8;//Speed of light (m/s)
v=0.950*c;//Velocity of muon (m/s)
Gamma=1/sqrt(1-v^2/c^2);
delta_t=Gamma*delta_t_0;//Elasped time as measured by Earth-bound observer (t)
printf('Life of the muon as measured by Earth-bound observer = %0.2e s',delta_t)
//Openstax - College Physics
//Download for free at http://cnx.org/content/col11406/latest

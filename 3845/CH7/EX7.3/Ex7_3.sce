//Example 7.3
F_app=120;//Applied force (N)
F_fr=5;//Opposing friction force(N)
d=0.800;//Distance traversed (m)
F_net=F_app-F_fr;//Net force (N)
W_net=F_net*d;//Net work (J)
printf('a.Net work done on the package = %0.1f J',W_net)
W_app=F_app*d*cosd(0);//Work done due to applied force in direction of displacement (J)
W_fr=F_fr*d*cosd(180);//Work done due to friction force acting in a direction opposite to that of displacement (J)
W_gr=0;//Work done by gravity is zero as force due to gravity acts perpendicular to displacement, cosd(270)=0, (J)
W_N=0;//Work done by the normal force is zero as it acts perpendicular to displacement, cosd(90)=0, (J)
W_total=W_gr+W_N+W_app+W_fr;//Total work done (J)
printf('\nb.Total work done as sum of work done by each force = %0.1f J',W_total)
//Openstax - College Physics
//Download for free at http://cnx.org/content/col11406/latest

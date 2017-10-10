//Example 16.7
m=0.200;//Mass (kg)
mu_k=0.0800;//Coefficient of friction
g=9.80;//Acceleration due to gravity (m/s^2)
f=mu_k*m*g;//Force (N)
printf('a.Frictional force between the surfaces = %0.3f N',f)
k=50;//Force constant of spring (N/m)
X=0.100;//Distance of object from equilibrium when released (m)
d=k/(2*mu_k*m*g)*[X^2-(mu_k*m*g/k)^2];//Distance (m)
printf('\nb.Distance travelled by the object =%0.2f m',d)
//Openstax - College Physics
//Download for free at http://cnx.org/content/col11406/latest

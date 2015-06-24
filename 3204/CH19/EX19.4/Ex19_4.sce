// Initiization of variables
a=1 // m/s^2 // acceleration of car A
u_B=36*(1000/3600) // m/s // velocity of car B
u=0 // m/s // initial velocity of car A
d=32.5 // m // position of car A from north of crossing
t=5 // seconds
// Calculations
// CAR A: Absolute motion using eq'n v=u+at we have,
v=u+(a*t) // m/s
// Now distance travelled by car A after 5 seconds is given by, s_A=u*t+(1/2)*a*t^2
s_A=(u*t)+((1/2)*a*t^2)
// Now, let the position of car A after 5 seconds be y_A
y_A=d-s_A // m // 
// CAR B:
// let a_B be the acceleration of car B
a_B=0 // m/s
// Now position of car B is s_B
s_B=(u_B*t)+((1/2)*a_B*t^2) // m
x_B=s_B // m
// Let the Relative position of car A with respect to car B be BA & its direction be theta, then from fig. 19.9(b)
OA=y_A
OB=x_B
BA=sqrt(OA^2+OB^2) // m
theta=atand(OA/OB) // degree
// Let the relative velocity of car A w.r.t. the car B be v_AB & the angle be phi. Then from fig 19.9(c). Consider small alphabets
oa=v
ob=u_B
v_AB=sqrt(oa^2+ob^2) // m/s
phi=atand(oa/ob) // degree
// Let the relative acceleration of car A w.r.t. car B be a_A/B.Then,
a_AB=a-a_B // m/s^2
// Results
clc
printf('The relative position of car A relative to car B is %f m \n',BA)
printf('The direction of car A w.r.t car B is %f degree \n',theta)
printf('The velocity of car A relative to car B is %f m/s \n',v_AB)
printf('The direction of car A w.r.t (for relative velocity)is %f degree \n',phi)
printf('The acceleration of car A relative to car B is %f m/s^2 \n',a_AB)

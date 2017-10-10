clc;
//By theoritical work, applying law of conservation of momentum and energy we get
//vA=(vB)y=3vc-6, (vB)x=3-vc
//20*vc^2-78*vc+72=0

y=poly([72,-78,20],'x','coeff');//Obtained polynomial
vc=roots(y);//m/s, 
vc=vc(1);//AS vc(2) gives negative value of vA
vA=3*vc-6;// m/s Velocity with which ball A hits the side of table
vBy=3*vc-6;//m/s, y coefficient Velocity with which ball B hits the side of table
vBx=3-vc;//m/s, x coefficient Velocity with which ball B hits the side of table
vB=[vBx,vBy];//m/s Velocity with which ball B hits the side of table
theta=atan(-vBy/vBx);//rad, angle of velocity B
theta=theta*180/%pi;//degree

printf("Velocities with which balls  hits the sides of table are\n vA= %.1f m/s \n vB= %.3f m/s with theta= %.1f degree \n vC=%.1f m/s\n",vA,norm(vB),theta,vc);

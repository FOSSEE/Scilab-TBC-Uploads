clear;
clc;

//page no. 126

D = 6;//in
v = 100;//fps
p = 0;//psi
gam = 0.08;//specific weight in lb/cuft
R = 6;//in
theta = 60;//degrees
v_r = v*(1-(0.5*D/R)^2)*cos(theta*%pi/180);
v_t = -v*(1+(0.5*D/R)^2)*sin(theta*%pi/180);
V = sqrt(v_r^2 + v_t^2);
p = ((v^2 /(2*32.2)) - (V^2 /(2*32.2)) - (cos(theta*%pi/180)*sin(theta*%pi/180)))*gam;
printf('Velocity = %.1f fps\n Pressure = %.2f psf',V,p);

//there is an error in the answer given in textbook

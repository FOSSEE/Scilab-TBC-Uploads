clear;
clc;

//page no. 112

e1 = 100;//ft
theta = 60;//degrees
e2 = 98.5;//ft
V_s2 = 20;//fps
e3 = 95;//ft

t2 = (e1-e2)/cos(theta*%pi/180);
p2 = 3*62.4*cos(theta*%pi/180);
V_F2 = sqrt((e1 + (V_s2^2 /(2*32.2)) - p2/62.4 -e2)*2*32.2);
q = 3*1*V_s2;
y = 11.22;//ft
y1 = 10.74;//ft
V1 = sqrt((y-y1)*2*32.2);

printf('On spillwy: Pressure = %.1f psf , velocity = %d fps' ,p2,V_F2);
printf('\n In the approach channel: Depth = %.2f ft, V1 = %.1f fps',y1,V1);

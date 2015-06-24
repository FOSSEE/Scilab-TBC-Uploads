clear;
clc;

//page no. 322

d = 12;// in
l = 1000;//ft
h1 = 200;//elevation
h2 = 250;//elevation
T = 50;//degreeF
f1 = 0.030;
V1 = sqrt((h2-h1)*2*32.2/(0.5+f1*l +1));
R1 = V1/0.00000141;
f2 = 0.019;
V2 = sqrt((h2-h1)*2*32.2/(0.5+f2*l +1));
R2 = V1/0.00000141;
Q = 0.25*%pi*(d/12)^2 *V2; 
printf('Velocity = %.1f fps\n flow rate = %.1f cfs',V2,Q);

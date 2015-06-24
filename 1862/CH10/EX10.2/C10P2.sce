clear
clc
//To find which magnitude is greater
//angular momentum of earth associated with its rotation on its axis
                           //OR 
//angular momentum of earth associated with its orbital motion around the sun

//Given:
//refer to figure 10-8 from page no. 213
//rotation period of the earth about its axis in hour
t1 = 24//in hour
//rotation period of earth about its axis in seconds
T1 = (t1*60*60)//in seconds
//T2 is time required by earth to complete one revolution around the sun
T2 = 3.16*10^7//in seconds
//mass of the earth
M = 5.98*10^24//in kg
//radius of the earth
RE = 6.37*10^6//in meters

//Solution:
//considering earth as a uniform sphere mmoment of inertia
I = (2/5)*M*RE^2
//angular speed
w1 = (2*3.14)/T1//in per seconds
//angular momentum of earth associated with its rotation
L_rot = I*w1//in kg m^2/s
//radius of orbit
R_orb = 1.50*10^11//in meters

//angular speed
w2 = (2*3.14)/T2//in per second
//velocity of rotation of earth around the sun
v = w2*R_orb//in m/s
//linear momentum
p = M*v
//angular momentum of earth associated with its orbital motion around the sun
L_orb = R_orb*p//in  kg m^2/s

printf ("\n\n Angular momentum of earth associated with its rotation on its axis is L_rot = \n\n %.2e kg m^2/s" ,L_rot);
printf ("\n\n Angular momentum of earth associated with its orbital motion around the sun L_orb = \n\n %.2e kg m^2/s",L_orb);
if (L_rot>L_orb) then
    printf('\n\n Angular momentum of earth associated with its rotation on its axis is greater than angular momentum of earth associated with its orbital motion around the suns');
else
     printf('\n\n Angular momentum of earth associated with its orbital motion around the sun is greater than angular momentum of earth associated with its rotation on its axis');
end

 


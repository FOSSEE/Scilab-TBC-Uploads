clc
//to calculate polarising angle and angle of refraction
mu=1.345    //refractive index, mu=1/sinc=1/sin48degree=1/0.7431 
ip=atand(mu)
r=90-ip
disp("polarising angle is ip="+string(ip)+"degree")
disp("angle of refraction is r="+string(r)+"degree") 

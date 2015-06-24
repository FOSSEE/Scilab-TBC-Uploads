clc
alpha = 15 // angle of contact
alpha = alpha*%pi/180
bita = 0 // degree
mu = 0.1 // coefficient of friction
mu1 = mu
mu2 = mu
h1 = 1.75 // mm
h0 = 2.5 // mm
B = (mu1+mu2)/(tan(alpha)-tan(bita)) 
y1 = (1+B)*(1-(h1/h0)^B)/B  //sigma_d/sigma_0 for plug mandrels in N/mm^2
z = 1/((h0/h1)-1)
y2 = log10(z)// sigma_d/sigma_0 for movable mandrels in N/mm^2
printf("\n The pipe drawing force force on plug mandrels = %0.3f \n The pipe drawing forcw on mandrels = %0.3f",y1,y2)
disp("Use of movable mandrel substantially reduces drawing force")

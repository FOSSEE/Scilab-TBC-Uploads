clear;
clc;
funcprot(0);

//given data
Z = 3;//number of blades
D = 30;//rotor diameter in m
J = 5.0;//tip-speed ratio
l = 1.0;//blade chord in m
r_R = 0.9;//ratio
beta = 2;//pitch angle in deg

//Calculations
//iterating to get values of induction factors
a = 0.0001;//inital guess
a_ = 0.0001;//inital guess
a_new = 0.0002;//inital guess
i = 0;
while (a_~=a_new)
   phi = (180/%pi)*atan((1/(r_R*J))*((1-a)/(1-a_)));
   alpha = phi-beta;
   CL = 0.1*alpha;
   lamda = (Z*l*CL)/(8*%pi*0.5*r_R*D);
   a = 1/(1+(1/lamda)*sin(phi*%pi/180)*tan(phi*%pi/180));
   a_new = 1/((1/lamda)*cos(phi*%pi/180) -1);
   if a_ < a_new
       a_ = a_ + 0.0001;
   elseif a_ > a_new
       a_ = a_ - 0.0001;
   end    
   if (abs((a_-a_new)/a_new) < 0.1) then
       break;
   end             
   i = i+1;
end

//Results
printf('Axial induction factor, a = %.4f',a);
printf('\n Tangential induction factor = %.5f',a_new);
printf('\n phi = %.3f deg.',phi);
printf('\n Lift coefficient = %.3f.',CL);

//The answers given in textbook are wrong

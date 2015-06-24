clear;
clc;
funcprot(0);

//given data
D = 30;//tip diameter in m
CL = 0.8;//lift coefficient
J = 5.0;
l = 1.0;//chord length in m
Z = 3;//number of blades
r_R = [0.2 0.3 0.4 0.6 0.8 0.9 0.95 1.0];
n = 8;
//Calculations
//iterating to get values of induction factors
a = 0.1;//inital guess
anew = 0;
a_ = 0.006;//inital guess
a_new = 0.0;//inital guess
for i = 1:n
    while (a_~=a_new)
        lamda = (Z*l*CL)/(8*%pi*0.5*r_R(i)*D);
        phi = (180/%pi)*atan((1/(r_R(i)*J))*((1-a)/(1-a_)));
        a = 1/(1+(1/lamda)*sin(phi*%pi/180)*tan(phi*%pi/180));
        a_new = 1/((1/lamda)*cos(phi*%pi/180) -1);
        alpha = CL/0.1;
        beta = phi-alpha;
        if a_ < a_new
            a_ = a_ + 0.0001;
        elseif a_ > a_new
            a_ = a_ - 0.0001;      
        end    
        if (abs((a_-a_new)/a_new) < 0.01) then
            break;
        end             
    end
    p(i) = phi;b(i) = beta;a1(i) = a;a2(i) = a_new;
end

//Results
printf('Summary of results of iterations (N.B. CL = 0.8 along the span)');
printf('\n -----------------------------------------------------------------------------------');
printf('\n r/R      %.1f      %.1f       %.1f       %.1f      %.1f      %.1f      %.2f        %.1f  ',r_R(1),r_R(2),r_R(3),r_R(4),r_R(5),r_R(6),r_R(7),r_R(8));
printf('\n -----------------------------------------------------------------------------------');
printf('\n phi    %.2f     %.2f     %.2f     %.2f    %.2f    %.2f     %.2f       %.3f',p(1),p(2),p(3),p(4),p(5),p(6),p(7),p(8));
printf('\n beta   %.2f     %.2f     %.2f     %.2f     %.2f     %.2f      %.2f       %.2f',b(1),b(2),b(3),b(4),b(5),b(6),b(7),b(8));
printf('\n a      %.4f   %.5f   %.5f   %.4f   %.4f   %.4f     %.4f     %.4f',a1(1),a1(2),a1(3),a1(4),a1(5),a1(6),a1(7),a1(8));
printf('\n a`     %.5f   %.5f   %.5f   %.5f   %.5f   %.5f   %.5f   %.5f',a2(1),a2(2),a2(3),a2(4),a2(5),a2(6),a2(7),a2(8));
printf('\n -----------------------------------------------------------------------------------');

//there are some errors in the answers given in textbook

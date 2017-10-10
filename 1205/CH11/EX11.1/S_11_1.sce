clc;
function x=displ(t)
    x=t^3-6*t^2-15*t+40;
    funcprot(0);
endfunction

function v=vel(t)
    v=3*t^2-12*t-15;
    funcprot(0);
endfunction

function a=acl(t)
    a=6*t-12;
    funcprot(0);
endfunction

//a0 Time at which V=0
V=poly([-15,-12,3],'x','coeff');// Velocity polynomial
[t]=roots(V);// Solution for polynomial
printf("When V=0 time should be %.0f s or %.0f s \n",t(1),t(2));
printf("From this only root %.0f s is valid\n",t(1));

//Position and distance traveled when v=0
x5=displ(t(1));//m, posiyion when V=0
x0=displ(0);//m, position when t=0
printf("Position at t=5 s is %.0f m \n and displacement from t=0 to V=0 s is %.0f m \n",x5,x5-x0); 
printf("Negative sign shows that displacement is in negative direction \n")
printf("Acceleration when v=0 is %.0f m/s^2 \n",acl(t(1)));
// Diaplacement upto 5 is negative and after that it is positive so we compute it seperately
d45=displ(5)-displ(4);//m, distance travelled from 4 to 5
d56=displ(6)-displ(5);//m, displacement from 5 to 6
printf("Total distance travelled is %.0f m \n",d56-d45);

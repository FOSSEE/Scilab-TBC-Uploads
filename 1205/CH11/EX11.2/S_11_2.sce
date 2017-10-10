clc;
a=-9.81;//m/s^2, Acceleration
// By theoritical work we get following functions
function y=displ(t)
    y=20+10*t-4.905*t^2;//m
    funcprot(0);
endfunction

function v=vel(t)
    v=10-9.81*t;//m/s
    funcprot(0);
endfunction

//At highest elevation v=0,

t=10/9.81;//s, 
// Putting it in displacement function

printf("When V=0 time should be %.3f s \n",t);
printf("Highest elevation %.1f m\n",displ(t));

//Ball hits the ground,then y=0


Y=poly([20,10,-4.905],'x','coeff');// Velocity polynomial
[t]=roots(Y);// Solution for polynomial
//Here only positive value is valid
t=t(1);
printf("Time to reach ground is %.2f s\n",t);
printf("Hitting velocity is %.1f m/s\n",vel(t));

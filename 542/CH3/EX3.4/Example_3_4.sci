clear;
clc;
printf("\n Example 3.4");
v_particle = 6;  //velocity of the particle in m/sec
v_water = 1.2;   //veloicity of the water in m/sec
v_rel = v_particle - v_water;//relative velocity of particles relative to the fluid in m/sec
Re1 = 6*10^(-3)*v_rel*1000/(1*10^(-3));//Re1 is the reynold's no.
printf("\nReynold no. is %d",Re1);

//When the particle has been retarded to a velocity such that Re=500
ydot = (v_rel*500)/Re1;
printf("\nParticle velocity is %.3f m/sec\n",ydot);
c = 0.33/(6*10^(-3))*(1000/2500);
f = sqrt((3*6*10^(-3)*(2500-1000)*9.81)/1000);
function[y]=Fa(t)
   y = (-1/22)*(log(cos(0.517*22*t) + 4.8/0.517*sin(0.517*22*t)));
   funcprot(0);
endfunction
 
function[yd]=deriv(t) 
    yd= -0.083+(0.517*(9.28*cos(11.37*t) - sin(11.37*t))/(cos(11.37*t) + 9.28*sin(11.37*t)));
    funcprot(0);
endfunction

function[ydd]=double_deriv(t)
    ydd = -0.517*(11.37)^2*(9.28*cos(11.37*t) - sin(11.37*t))/(cos(11.37*t) + 9.28*sin(11.37*t));
    funcprot(0);
endfunction


told = 0;
while 1
    tnew = told - deriv(told)/double_deriv(told);
    if (tnew == told) then
        y = Fa(told);
        d = y;
        printf("\nThe distance moved with speed less than 0.083m/sec is %.3fm",d);
        t=told;
        printf("\n The time taken by particle to move this distance is %.3fsec",t);
        break;
    end
    told = tnew;
end


printf("\nThe distance moved by the particle relative to the walls of the plant %.3fm",1.2*t - d);
 





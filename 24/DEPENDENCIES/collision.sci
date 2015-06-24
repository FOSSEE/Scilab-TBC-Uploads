//To calculate velocities after a two particle head on collision
//Vf = velocities after collision
//**Already defined variables**
//e = newton's constant for collision
//m1&m2 = masses of the particles
//Vi = initial velocities of the particle
function [f] = collision(Vf)
    f=zeros(2,1);
    //newton's equation for collision
    f(2)= e*(Vi(1)-Vi(2))-(Vf(2)-Vf(1));
    //Momentum conservation
    f(1)=(m1*Vi(1)+m2*Vi(2))-(m1*Vf(1)+m2*Vf(2))
endfunction
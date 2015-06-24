//to calculaate torque constt,value of rotational loss,stalled torque and stalled current of motor, armature current anad eff, motor o/p and eff

clc;
Vt=6;
Iao=.0145;
n=12125;
w=2*%pi*n/60;
Ra=4.2;
Ea=Vt-Iao*Ra;
Km=Ea/w;disp(Km,'torque constt');

Prot=Ea*Iao;disp(Prot,'rotational loss(W)');

Ia_stall=Vt/Ra;disp(Ia_stall,'stalled current(A)');
Tstall=Km*Ia_stall;disp(Tstall,'stalled torque(Nm)');

Poutg=1.6;
function [x]=quad(a,b,c)
    d=sqrt(b^2-4*a*c);
    x1=(-b+d)/(2*a);
    x2=(-b-d)/(2*a);
    if(x1>x2)
        x=x2;
    else
        x=x1;
    end
endfunction
//Ea*Ia=1.6;
//(Vt-Ra*Ia)*Ia=Poutg;
Ia=quad(Ra,-Vt,Poutg);
Ea=Vt-Ia*Ra;
wo=Ea/Km;
Proto=Prot*(w/wo)^2;
Pout_net=Poutg-Prot;
Pi=Vt*Ia;
eff=Pout_net/Pi;disp(eff*100,'efficiency(%)');

n1=10250;
w1=2*%pi*n1/60;
Km=.004513;
Ea1=Km*w1;
Ia=(Vt-Ea1)/Ra;
Pout_gross=Ea1*Ia;
Prot1=Prot*(n1/n);
Pout_net=Pout_gross-Prot1;disp(Pout_net,'o/p power(W)');
Pin=Vt*Ia;
eff=Pout_net/Pin;disp(eff*100,'efficiency(%)');
//to find the range of generator field current,motor current and speed

clc;
If=[0 0.2 0.3 0.4 0.5 0.6 0.7 0.8 1 1.2];
Voc=[45 110 148 175 195 212 223 230 241 251];
plot(If,Voc);
xlabel('If(A)');
ylabel('Voc(V)');
Ifm=0.8;
Eam2=230;    //at 1500rpm
n_m2=1500;
Ra=.5;
//n_m=300-1500rpm(range)
n_m1=300;
Eam1=Eam2*n_m1/n_m2;
P_mot=4500;
Ia1=P_mot/Eam1;
Eag1=Eam1+2*Ra*Ia1;
If1=.3-((.1/(148-110))*(148-Eag1));
disp(If1,'lower limit of current(A)');

n_m2=1500;
Eam2=230;
P_mot=4500;
Ia2=P_mot/Eam2;
Eag2=Eam2+2*Ra*Ia2;
If2=1.2-(.2/(241-230)*(251-Eag2));
disp(If2,'upper limit of current(A)');

Ifg=1;
Eag=241;
n=1500;
Pop=4500;
//((241-Eam)/(2*.5))*Eam=4500
//after solving
//Eam^2-241*Eam+4500=0
function [x]=quad(a,b,c)
    d=sqrt(b^2-4*a*c);
    x1=(-b+d)/(2*a);
    x2=(-b-d)/(2*a);
    if(x1<x2)
        x=x2;
    else
        x=x1;
    end
endfunction
Eam=quad(1,-241,4500);
Ifm=.2;
Eamm=110;
n_m=n*Eam/Eamm;disp(n_m,'speed(rpm)');
Ia=(Eag-Eam)/(2*.5);disp(Ia,'motor current(A)');

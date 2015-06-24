clear; clc; close;

f = 1000;
T = 1/f;
C = 0.1*10^(-6);
R = 100*10^(3);
//between t1-->t2
vo_1 = 5;
Vc = 25;
//between t2-->t3
Rth = 0;
Eth = 5;
vo_2 =35;
tau = R*C;
discharge_time = 5*tau;
//between t3-->t4
vo_3 = 5;

disp(vo_1,'output voltage during t1-->t2 : ');
disp(vo_2,'output voltage during t2-->t3 : ');
disp(vo_3,'output voltage during t3-->t4 : ');


t = 0:10^(-6):2.5*10^(-3);

for i= 1:length(t)
    if(t(i)>=0 & t(i)<=0.5*10^(-3))
        y(i) = 0;
    elseif(t(i)>=0.5*10^(-3) & t(i)<=10^(-3))
        y(i) = 5;
    elseif(t(i)>=10^(-3) & t(i)<=1.5*10^(-3))
        y(i)=35;
    elseif(t(i)>=1.5*10^(-3) & t(i)<=2.0*10^(-3))
        y(i)=5;
    elseif(t(i)>=2.0*10^(-3) & t(i)<=2.5*10^(-3))
        y(i)=35;
    end
end
a = gca();
a.thickness = 2;
plot2d(t,y);
a.x_label.text = 't';
a.y_label.text = 'Vo';
xset('thickness',2);
xstring(0.5*10^(-3),0,'t1');
xstring(10^(-3),0,'t2');
xstring(1.5*10^(-3),0,'t3');
xstring(2*10^(-3),0,'t4');
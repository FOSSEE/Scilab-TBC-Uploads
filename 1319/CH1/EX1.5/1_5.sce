// To find the inductance of a choke to operate a 120V 500W lamp at 230V

clc;
clear;

V=120;
W=500;
Rl=(V^2)/W;
I=W/V; // Circuit Current

// Q of a choke means the ratio of its inductive reactance to its resistance

Q=2;
f=60;
w=2*%pi*f;

Vs=230; // Supply Voltage

Xcir=230/I;

L=poly([0 1],'L','c');

Xl=w*L;

Rc=Xl/2; // Q utilised

// total resistance 

Rt=Rl+Rc;


ind=(Rt^2)+(Xl^2)-(Xcir^2);// Characteristic equation to find L

L=roots(ind);

disp(ind,'The Characteristic equation to find L is')

if(imag(sqrt(L(1))))
    L=L(2);
else
    L=L(1);
end


disp('H',L,'The inductance of the choke coil = ')

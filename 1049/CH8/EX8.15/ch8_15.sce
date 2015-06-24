clear;
clc;
R=10;
L=.01;
C=10*10^-6;
if(R^2<4*L/C)
    disp("ckt will commutate on its own");
else
    disp("ckt will not commutate on its own");
end   

xie=R/(2*L);
w_o=1/sqrt(L*C);
w_r=sqrt(w_o^2-xie^2);
phi=atand(xie/w_r);
t=%pi/w_r;
V_s=1;
v_L=V_s*(w_o/w_r)*exp(-xie*t)*cosd(180+phi);    printf("voltage across inductor(*V_s)=%.5f V",v_L);
v_c=V_s*(1-(w_o/w_r)*exp(-xie*t)*cosd(180-phi));    printf("\nvoltage across capacitor(*V_s)=%.5f V",v_c);
di=V_s/L;    printf("\ndi/dt*V_s (for t=0)=%.0f A/s",di);
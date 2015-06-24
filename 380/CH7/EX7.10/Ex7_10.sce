//Caption:Find (a)per phase terminal voltage (b)armature current (c)power supplied (d)total power output
//Exa:7.10
clc;
clear;
close;
Z_s1=(%i)*5;//ohm/phase
Z_s2=(%i)*8;//ohm/phase
Z_L=4+((%i)*3);//load impedance (in ohm/phase)
function y=phasor(theta);
    y=cosd(theta)+((%i)*sind(theta));
endfunction;
function z=angle(x,y);
    z=atand(y/x);
endfunction;
E_a1=120*phasor(10);
E_a2=120*phasor(20);
V_a=(((E_a1*Z_s2)+(E_a2*Z_s1))/((Z_L*(Z_s1+Z_s2))+(Z_s1*Z_s2)))*Z_L;
disp(polar(V_a),' (a) magnitude of phase voltage (in Volts)=');
a1=angle(real(V_a),imag(V_a));
disp(a1,'phase angle of voltage (in Degree)=');
I_a1=(E_a1-V_a)/Z_s1;
disp(polar(I_a1),'(b) magnitude of armature current of generator 1 (in Amperes)=');
a2=angle(real(I_a1),imag(I_a1));
disp(a2,'phase angle of armature current of generator 1 (in Degree)=');
I_a2=(E_a2-V_a)/Z_s2;
disp(polar(I_a2),'magnitude of armature current of generator 2 (in Amperes)=');
a3=angle(real(I_a2),imag(I_a2));
disp(a3,'phase angle of armature current of generator 2 (in Degree)=');
P_o1=3*real(V_a*conj(I_a1));
P_o2=3*real(V_a*conj(I_a2));
disp(polar(P_o1),' (c) Power developed of generator 1 (in Watts)=');
disp(polar(P_o2),' Power developed of generator 2 (in Watts)=');
P_o=P_o1+P_o2;
disp(P_o,'(d) total power output (in Watts)=');
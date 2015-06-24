//clear//
//Caption:Program to determine the total voltage as a function
//of time and position in a loss less transmisson line
//Example11.1
//page342
//syms z,t,B,w,Vo;
VST = sym('2*Vo*cos(B*z)');
V_zt = VST*sym('cos(w*t)');
disp(V_zt,'V(z,t)=')
//Result
//V(z,t)= 2*Vo*cos(t*w)*cos(z*B) 

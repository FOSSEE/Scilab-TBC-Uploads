//clear//
clc
clear
exec("6.8data.sci");
 v = 0:.1:10;
function w =FF(v,f)

 w =zeros(6,1);
 ft = f(1)+f(2)+f(2)+f(4)+f(5)+f(6);
 r1a = -5*8*(f(1)/ft)*(f(2)/ft)^2;
 r2a = -2*4*(f(1)/ft)*(f(2)/ft);
 r4c = -5*3.175*(f(3)/ft)*(f(1)/ft)^(2/3);
 r3b = -10*8*((f(3)/ft)^2)*(f(2)/ft);
 Ca =2*f(1)/ft;
 Cb =2*f(2)/ft;
 Cc =2*f(3)/ft;
 Cd =2*f(4)/ft;
 Ce =2*f(5)/ft;
 Cf =2*f(6)/ft;
w(1)= 1.25*r1a+.75*r2a+r3b;
 w(2) = r1a+r2a+2*r4c/3;
 w(3) = -r1a+2*r3b+r4c;
 w(4) =-1.5*r1a-1.5*r2a-r4c;
 w(5) =.5*r2a-5*r4c/6;
 w(6) = -2*r3b;
 
endfunction

x=ode([9;9;0;0;0;0],v0,v,FF);

plot2d(v,x(1,:)/10,rect=[1,0,10,1.5]); //B
plot2d(v,x(2,:)/10,rect=[1,0,10,1.5]); //A
plot2d(v,x(3,:)/10,rect=[1,0,10,1.5]); //C
plot2d(v,x(4,:)/10,rect=[1,0,10,1.5]);
plot2d(v,x(5,:)/10,rect=[1,0,10,1.5]);
plot2d(v,x(6,:)/10,rect=[1,0,10,1.5]);
xtitle('FigureE');
legend (['B';'A';'C';'D';'E';'F']);



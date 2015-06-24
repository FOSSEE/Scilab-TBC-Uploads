clc;
clear;
function z=f(x,y)
    z=2*x*y + 2*x - x^2 - 2*y^2
endfunction
x=-1;
y=1;
d2fx=-2;
d2fy=-4;
d2fxy=2;

modH=d2fx*d2fy-(d2fxy)^2;

for i=1:25
dfx=2*y+2-2*x;
dfy=2*x - 4*y;
//the function can thus be expressed along h axis as
//f((x+dfx*h),(y+dfy*h))
function d=g(h)
    d=2*(x+dfx*h)*(y+dfy*h) + 2*(x+dfx*h) - (x+dfx*h)^2 - 2*(y+dfy*h)^2
endfunction
//2*dfx*(y+dfy*h)+2*dfy*(x+dfx*h)+2*dfx-2*(x+dfx*h)*dfx-4*(y+dfy*h)*dfy=g'(h)=0
//2*dfx*y + 2*dfx*dfy*h + 2*dfy*x + 2*dfy*dfx*h + 2*dfx - 2*x*dfx - 2*dfx*dfx*h - 4*y*dfy - 4*dfy*dfy*h=0
//h(2*dfx*dfy+2*dfy*dfx-2*dfx*dfx-4*dfy*dfy)=-(2*dfx*y+2*dfy*x-2*x*dfx-4*y*dfy)
h=(2*dfx*y+2*dfy*x-2*x*dfx-4*y*dfy+2*dfx)/(-1*(2*dfx*dfy+2*dfy*dfx-2*dfx*dfx-4*dfy*dfy));
x=x+dfx*h;
y=y+dfy*h;
end
disp([x y],"The final values are:")
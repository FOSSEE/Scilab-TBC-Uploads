clc
disp("the soln of eg 2.6-->");
xnew=0.1,ynew=0.5, e1=1, e2=1
while e1>10^-6 & e2>10^-6 do x=xnew, y=ynew,
y1=3*x^3+4*y^2-145,
d_fx=9*x^2
d_fy=8*y
y2=4*x^2-y^3+28,
d_gx=8*x
d_gy=-3*y^2
D2=d_fx*d_gy-d_gx*d_fy
delta_x=(y2*d_fy-y1*d_gy)/D2
delta_y=(y1*d_gx-y2*d_fx)/D2
xnew=x+delta_x
ynew=y+delta_y
e1=abs(xnew-x)
e2=abs(ynew-y)
end
disp(y,x,"the values of x and y are respectively");
clc
disp("the soln of eg 2.5--> non linear equations");
xnew=0.1,ynew=0.5, e1=1, e2=1
while e1>1e-6 & e2>1e-6 do x=xnew,y=ynew,
y1=exp(x)+x*y-1,
d_fx=exp(x)+y
d_fy=x
y2=sin(x*y)+x+y-1,
d_gx=y*cos(x*y)+1
d_gy=x*cos(x*y)+1
t1=(y2*d_fy), t2=(y1*d_gy),
D1=d_fx*d_gy-d_fy*d_gx
delta_x=(t1-t2)/D1
t3=(y1*d_gx),t4=(y2*d_fx)
delta_y=(t3-t4)/D1
xnew=x+delta_x
ynew=y+delta_y
e1=abs(x-xnew)
e2=abs(y-ynew)
end
disp(y,x,"the values of x and y respectively are");
disp("such small value of x can be considered as zero.")
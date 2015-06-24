// function for smith chart for finding load impedence when reflection coefficient is given.
function[]=smith_chart(tao)
theta=0:0.1:2*%pi;
for r=0:0.1:10
x=(1/(1+r))*cos(theta)+(r/(1+r));
y=(1/(1+r))*sin(theta);
plot2d(x,y,style=2,rect=[-2,-2,2,2])
end
for X=-2:0.1:2
   if X==0
    X=0.01;
  end
x=1+(1/X)*cos(theta);
y=(1/X)*sin(theta)+(1/X);
plot2d(x,y,style=3,rect=[-2,-2,2,2])
xgrid(2)
xtitle("smith chart","Tao_Real","Tao_Imaginary")
end
x=abs(tao)*cos(theta);
y=abs(tao)*sin(theta);
plot2d(x,y,style=5,rect=[-2,-2,2,2])
theta=-%pi/2:0.1:%pi/2;
x=abs(tao)*cos(theta);
[r angle]=polar(tao);
tao=[r angle]
y=x*tan(tao(1,2));
plot2d(x,y,style=5,rect=[-2,-2,2,2])
endfunction
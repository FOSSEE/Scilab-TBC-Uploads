// function to plot smith chart.
function[]=smith_chart(s,le) // normalized load.
for r=0:0.1:10
theta=0:0.1:2*%pi;
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
p=(2*%pi)/le;  //  it is "d/lamda" distance in terms of angle either towards generator or towards load.
x=s*cos(theta);    // le is the electrical length.
y=s*sin(theta);
plot2d(x,y,style=5,rect=[-2,-2,2,2])
y=x*tan(p);
plot2d(x,y,style=5,rect=[-2,-2,2,2])
endfunction
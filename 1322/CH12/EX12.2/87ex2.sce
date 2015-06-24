
//Given :Inequalities y>x-2, y<2*x+1 and x+y<6
clc;
clear;
clf();
x=linspace(0,9,10);
y=x-2;
plot2d(x,y,3);//"points in the region y>x-2 lie above the line y=x-2"
y=2*x+1;
plot2d(x,y,5);//"points in the region y<2*x+1 lie below the line y=2*x+1"
y=6-x;
plot2d(x,y,2);//"points in the region x+y<6 lie below the line x+y=6"
xtitle("region dscribed by inequalities","x axis","y axis");
legend("x-2","2*x+1","6-x",2);
xgrid;
//(3,2) is one point from the graph enclosed by these inequalities
x=3;y=2;plot(x,y,'b.diam')
if((y>x-2)&(y<2*x+1)&(x+y<6))  //this condition does not satisfies the point that lies out of the region ex:(7,7)
 mprintf('\n point that lies in the region is (%i,%i) \n',x,y)
end


clear;
clc;
close;
set(gca(),"auto_clear","off")        //hold on

for x=-20:0.5:20
    y1 = x;
    y=0;
    x1=0;
    //h1=acosh(x);
    plot2d(x,y1,style=-2)
    plot2d(x,y,style=-4)
    plot2d(x1,x,style=-4)
    
end

for x=-5:0.5:5
    y2=-4*x;
    plot2d(x,y2,style=-2)
end

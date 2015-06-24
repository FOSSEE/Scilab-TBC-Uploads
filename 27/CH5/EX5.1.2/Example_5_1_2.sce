clear;
clc;
close;
set(gca(),"auto_clear","off")        //hold on

a=-1;            //Change a to get different figures; Not work for a=0 as z1 is not defined as slope is infinty
i=1;j=1;
for x=-10:1:10
    if (x<>0) then                //x<>0 because z1 not defined at x=0;
    j=1;
    for y=-5:2:5
        x1 = a*x;                //x1=x(dot)
        y1 = -y;                 //y1=y(dot)
        mat1(i,j)=x;
        mat2(i,j)=y;
        //plot2d(x1,y1,style=-4)
        z1(i,j) = y1./x1;        //tangent matrix; calculating slope at every point.
        j=j+1;
    end
    i=i+1;
    end
end



////////////////////// Phase Portrait computations Started ///////////////////////

//Algorithm: (y-y0)=m*(x-x0) equation is used.
//A straight line is drawn in every small interval surrounding x.
i=1;
    for yo=-5:2:5
        for x=-10.5:0.2:-9.5
            y=(z1(1,i)*(x+10))+yo;
            plot2d(x,y,style=-4)
        end
        i=i+1;
    end

       // for x=-11:0.1:-9
         //   y=(0.25*(x+10))-3;
           // plot2d(x,y,style=-3)
        //end
          //      for x=-11:0.1:-9
            //y=(0.25*(x+10))-1;
            //plot2d(x,y,style=-1)
        //end
            
i=1;
    for yo=-5:2:5
        for x=-9.5:0.2:-8.5
            y=(z1(2,i)*(x+9))+yo;
            plot2d(x,y,style=-3)
        end
        i=i+1;
    end
    
i=1;
    for yo=-5:2:5
        for x=-8.5:0.2:-7.5
            y=(z1(3,i)*(x+8))+yo;
            plot2d(x,y,style=-4)
        end
        i=i+1;
    end
    
i=1;
    for yo=-5:2:5
        for x=-7.5:0.2:-6.5
            y=(z1(4,i)*(x+7))+yo;
            plot2d(x,y,style=-3)
        end
        i=i+1;
    end
    
i=1;
    for yo=-5:2:5
        for x=-6.5:0.2:-5.5
            y=(z1(5,i)*(x+6))+yo;
            plot2d(x,y,style=-4)
        end
        i=i+1;
    end
    
i=1;
    for yo=-5:2:5
        for x=-5.5:0.2:-4.5
            y=(z1(6,i)*(x+5))+yo;
            plot2d(x,y,style=-3)
        end
        i=i+1;
    end
    
i=1;
    for yo=-5:2:5
        for x=-4.5:0.2:-3.5
            y=(z1(7,i)*(x+4))+yo;
            plot2d(x,y,style=-4)
        end
        i=i+1;
    end
    
    
i=1;
    for yo=-5:2:5
        for x=-3.5:0.2:-2.5
            y=(z1(8,i)*(x+3))+yo;
            plot2d(x,y,style=-3)
        end
        i=i+1;
    end


i=1;
    for yo=-5:2:5
        for x=-2.5:0.2:-1.5
            y=(z1(9,i)*(x+2))+yo;
            plot2d(x,y,style=-4)
        end
        i=i+1;
    end
    
i=1;
    for yo=-5:2:5
        for x=-1.5:0.2:-0.5
            y=(z1(10,i)*(x+1))+yo;
            plot2d(x,y,style=-3)
        end
        i=i+1;
    end
    
    
i=1;
    for yo=-5:2:5
        for x=0.5:0.2:1.5
            y=(z1(11,i)*(x-1))+yo;
            plot2d(x,y,style=-4)
        end
        i=i+1;
    end

i=1;
    for yo=-5:2:5
        for x=1.5:0.2:2.5
            y=(z1(12,i)*(x-2))+yo;
            plot2d(x,y,style=-3)
        end
        i=i+1;
    end
    
    
i=1;
    for yo=-5:2:5
        for x=2.5:0.2:3.5
            y=(z1(13,i)*(x-3))+yo;
            plot2d(x,y,style=-4)
        end
        i=i+1;
    end
    
    
i=1;
    for yo=-5:2:5
        for x=3.5:0.2:4.5
            y=(z1(14,i)*(x-4))+yo;
            plot2d(x,y,style=-3)
        end
        i=i+1;
    end
    
i=1;
    for yo=-5:2:5
        for x=4.5:0.2:5.5
            y=(z1(15,i)*(x-5))+yo;
            plot2d(x,y,style=-4)
        end
        i=i+1;
    end
i=1;
    for yo=-5:2:5
        for x=5.5:0.2:6.5
            y=(z1(16,i)*(x-6))+yo;
            plot2d(x,y,style=-3)
        end
        i=i+1;
    end
    
    
i=1;
    for yo=-5:2:5
        for x=6.5:0.2:7.5
            y=(z1(17,i)*(x-7))+yo;
            plot2d(x,y,style=-4)
        end
        i=i+1;
    end
    
i=1;
    for yo=-5:2:5
        for x=7.5:0.2:8.5
            y=(z1(18,i)*(x-8))+yo;
            plot2d(x,y,style=-3)
        end
        i=i+1;
    end
    
i=1;
    for yo=-5:2:5
        for x=8.5:0.2:9.5
            y=(z1(19,i)*(x-9))+yo;
            plot2d(x,y,style=-4)
        end
        i=i+1;
    end
    
    
i=1;
    for yo=-5:2:5
        for x=9.5:0.2:10.5
            y=(z1(20,i)*(x-10))+yo;
            plot2d(x,y,style=-3)
        end
        i=i+1;
    end

//////////// Phase Portrait Computations Completed //////////////////


////////////////  Drawing X-Axis
for x=-11:9
    y=0;
    plot2d(x,y,style=-4)
end

///////////////  Drawing Y-Axis
for y=-10:10
    x=0;
    plot2d(x,y,style=-4)
    
end

// flow lines on x-axis
y=0;

for x=-10:2:10
    x1=a*x;
    if(x1>0)
        plot2d(x,y,style=-12);
    elseif(x1<0)
        plot2d(x,y,style=-13);
    else
        plot2d(x,y,style=-4);
    end
end


// Flow lines on y-axis
x=0;

for y=-10:2:10
    y1=-y;
    if(y1>0)
        plot2d(x,y,style=-6);
    elseif(y1<0)
        plot2d(x,y,style=-7);
    else
        plot2d(x,y,style=-4);
    end
end


    xtitle("Phase Portrait for","x-Axis","y-Axis")



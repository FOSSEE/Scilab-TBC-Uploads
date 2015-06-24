clear;
clc;
close;
set(gca(),"auto_clear","off")        //hold on

for y=-3:0.5:5
    x = -exp(-y);
    x1=0;
    plot2d(x,y,style=-2)
    plot2d(x1,y,style=-4)
end


for x=-30:0.5:5
    y=0;
    plot2d(x,y,style=-4)
end

///////////////  Flow ////////////////////////

i=1;j=1;
for x=-10:3:10
    j=1;
    for y=-5:2:5
        x1 = x+exp(-y);
        y1 = -y;
        mat1(i,j)=x;
        mat2(i,j)=y;
        //plot2d(x1,y1,style=-4)
        z1(i,j) = y1./x1;
        j=j+1;
    end
    i=i+1;
end


i=1;
    for yo=-5:2:5
        for x=-11:0.5:-9.5
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
        for x=-8:0.5:-6.5
            y=(z1(2,i)*(x+7))+yo;
            plot2d(x,y,style=-3)
        end
        i=i+1;
    end
    
i=1;
    for yo=-5:2:5
        for x=-5:0.5:-3.5
            y=(z1(3,i)*(x+4))+yo;
            plot2d(x,y,style=-4)
        end
        i=i+1;
    end
    
i=1;
    for yo=-5:2:5
        for x=-2:0.5:-0.5
            y=(z1(4,i)*(x+1))+yo;
            plot2d(x,y,style=-3)
        end
        i=i+1;
    end
    
i=1;
    for yo=-5:2:5
        for x=1:0.5:2.5
            y=(z1(5,i)*(x-2))+yo;
            plot2d(x,y,style=-4)
        end
        i=i+1;
    end
    
i=1;
    for yo=-5:2:5
        for x=4:0.5:5.5
            y=(z1(6,i)*(x-5))+yo;
            plot2d(x,y,style=-3)
        end
        i=i+1;
    end
    
i=1;
    for yo=-5:2:5
        for x=7:0.5:8.5
            y=(z1(7,i)*(x-8))+yo;
            plot2d(x,y,style=-4)
        end
        i=i+1;
    end
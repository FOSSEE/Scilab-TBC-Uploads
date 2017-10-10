clear;
clc;
close;
mtlb_hold on

circle([0 0],4,50)     //Circle is drawn with (0,0)as center, radius=4.
circle([0,0],2,50)

a=get("current_axes");        //get the handle of the newly created axes
a.data_bounds=[-5,-5;5,5];

for x = -4:2:4
    for v = -4:2:4
        if(x==0) &amp; (v==0)
            plot2d(x,v,style=-4)        //if x=0 and v=0 then x(dot)and v(d                                        ot) are also zero, thus Fixed point.
        end
        if(x==0) &amp; (v&gt;0)
            plot2d(x,v,style=-12)
        end
        if(x==0) &amp; (v&lt;0)
            plot2d(x,v,style=-13)
        end
        if(v==0) &amp; (x&gt;0)
            plot2d(x,v,style=-7)
        end
        if(v==0) &amp; (x&lt;0)
            plot2d(x,v,style=-6)
        end
    end
end

a=get("current_axes");            //get the handle of the newly created axes
a.data_bounds=[-5,-5;5,5];
xtitle("Vector Field","X - Axis ( X )","Y - Axis ( V )")
    set(gca(),"grid",[2,5])        //Grid on

figure
function xd=linear511(t,x)
    xd(1)=x(2);                 //x(dot);   x(2) means v.
    xd(2)=-50*x(1);             //v(dot);   x(1) means x.; Taking w^2=50;
  endfunction
  bound=[-4,-4,4,4];        //Bounds of x-axis and y-axis as [xmin ymin xma                            x ymax], change them according to your needs.
  nrect=15;                 //increase it to get more number of curves, i.e                            . more information will be available.
  set(gca(),"auto_clear","off")        //hold on
  x=linspace(bound(1),bound(3),nrect);
  y=linspace(bound(2),bound(4),nrect);
  x0=[];
 
 for i=1:15
     x0=[x(i);y(i)];
     t0=0;
     t=0:0.01:3000;
     xout=ode(x0,t0,t,linear511);
     plot2d(xout(1,:),xout(2,:));
 end
mew=-2.1;
  function xd=linear813(t,x)
    xd(1)=mew*x(1)+x(2)+sin(x(1));
    xd(2)=x(1)-x(2);
             //x(dot);   x(2) means y.
             //y(dot);   x(1) means x.; 
  endfunction
  bound=[-2,-2,2,2];        //Bounds of x-axis and y-axis as [xmin ymin xmax ymax], change them according to your needs.
  nrect=20;     //increase it to get more number of curves, i.e. more information will be available.
  set(gca(),"auto_clear","off")        //hold on
  x=linspace(bound(1),bound(3),nrect);
  y=linspace(bound(2),bound(4),nrect);
  x0=[];
 
 for i=1:20
     x0=[x(i);y(i)];
     t0=0;
     t=0:0.01:3000;
     xout=ode(x0,t0,t,linear813);
     plot2d(xout(1,:),xout(2,:));
 end
  xtitle('Phase Portrait','x-axis ( x )','y-axis ( y )')
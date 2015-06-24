function xd=linear731(t,x)
 xd(1)=(cos(t)*sqrt(x(1)^2+x(2)^2)*(1-x(1)^2-x(2)^2))+(cos(t)*1*sqrt(x(1)^2+x(2)^2)*cos(t))-(sqrt(x(1)^2+x(2)^2)*sin(t));
    xd(2)=(sin(t)*sqrt(x(1)^2+x(2)^2)*(1-x(1)^2-x(2)^2))+(sin(t)*1*sqrt(x(1)^2+x(2)^2)*cos(t))-(sqrt(x(1)^2+x(2)^2)*cos(t));
        //x(dot);   x(2) means y.
        //y(dot);   x(1) means x.; 
  endfunction
  bound=[-4,-4,4,4];        //Bounds of x-axis and y-axis as [xmin ymin xmax ymax], change them according to your needs.
  nrect=12;     //increase it to get more number of curves, i.e. more information will be available.
  set(gca(),"auto_clear","off")        //hold on
  x=linspace(bound(1),bound(3),nrect);
  y=linspace(bound(2),bound(4),nrect);
  x0=[];
 
 for i=1:12
     x0=[x(i);y(i)];
     t0=0;
     t=0:0.01:3000;
     xout=ode(x0,t0,t,linear731);
     plot2d(xout(1,:),xout(2,:));
 end
 xtitle('Phase Portrait','x-axis ( x )','y-axis ( y )')
function xd=linear725(t,x)
    xd(1)=(x(2));         //x(dot);   x(2) means y.
    xd(2)=-x(1)-x(2)+x(1)^2+x(2)^2;     //y(dot);   x(1) means x.; 
  endfunction
  bound=[-15,-15,15,15];        //Bounds of x-axis and y-axis as [xmin ymin xmax ymax], change them according to your needs.
  nrect=22;     //increase it to get more number of curves, i.e. more information will be available.
  set(gca(),"auto_clear","off")        //hold on
  x=linspace(bound(1),bound(3),nrect);
  y=linspace(bound(2),bound(4),nrect);
  x0=[];
 
 for i=1:22
     x0=[x(i);y(i)];
     t0=0;
     t=0:0.01:6000;
     xout=ode(x0,t0,t,linear725);
     plot2d(xout(1,:),xout(2,:));
 end
 xtitle('Phase Portrait','x-axis ( x )','y-axis ( y )')
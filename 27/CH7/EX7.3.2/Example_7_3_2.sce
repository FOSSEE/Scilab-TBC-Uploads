function xd=linear732(t,x)
    xd(1)=-x(1)+2*x(2)+(x(1)^2)*x(2);
    xd(2)=(4)-2*x(2)-(x(1)^2)*x(2);
  endfunction
  bound=[-4,-4,4,4];        //Bounds of x-axis and y-axis as [xmin ymin xmax ymax], change them according to your needs.
  nrect=22;     //increase it to get more number of curves, i.e. more information will be available.
  set(gca(),"auto_clear","off")        //hold on
  x=linspace(bound(1),bound(3),nrect);
  y=linspace(bound(2),bound(4),nrect);
  x0=[];
 
 for i=1:22
     x0=[x(i);y(i)];
     t0=0;
     t=0:0.01:3000;
     xout=ode(x0,t0,t,linear732);
     plot2d(xout(1,:),xout(2,:));
 end
   xtitle('Phase Portrait','x-axis ( x )','y-axis ( y )')
disp("From the figure we can clearly observe that the trajectories are giving it a limit cycle shape.")
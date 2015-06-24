//example 3.23<i>
//Find the convolution sum
clear ;
 close ;
 clc ;
 t= -5:1/100:5;
 for i =1: length (t)
 if t(i) <0 then
 h(i)=0;
 x(i)=0;
 else
 h(i)=2^t(i);
 x(i)=1;
 end
 end
 y = convol (x,h) ;
 //figure
 f=scf(0);
 plot2d (t,h)
 xtitle ( ' Input Re spons e ' , ' t ' , ' h ( t ) ' );
 xs2jpg(0, 'problem32-plot-a.jpg');
 //figure
 f=scf(1);
 plot2d (t,x)
 xtitle ( ' Input Re spons e ' , ' t' , ' x ( t ) ' );
 xs2jpg(1, 'problem32-plot-b.jpg');
 //figure
 f=scf(2);
 a= gca ();
 t1 = -10:1/100:10;
 plot2d (t1 ,y)
 xtitle ( ' Output Re spons e ' , ' t ' , ' y ( t) ' );
 xs2jpg(2, 'problem32-plot-c.jpg');
 //example 3.23<ii>
//Find the response using convolution sum
clear ;
clc;
 close ;
 t = -5:1/100:5;
 for i =1: length (t)
 if t(i) <0 then
 h(i)=0;
 x(i)=0;
 elseif t(i)<3 then
 h(i)=0;
 x(i)=1;
 else h(i)=1;x(i)=1;
 end
 end
 y = convol (x,h) ;
 //figure
 f=scf(0);
 plot2d (t,h)
 xtitle ( ' Input Re spons e ' , ' t ' , ' h ( t ) ' );
 xs2jpg(0, 'problem33-plot-a.jpg');
 //figure
f=scf(1);
 plot2d (t,x)
 xtitle ( ' Input Re spons e ' , ' t ' , ' x ( t ) ' );
 xs2jpg(1, 'problem33-plot-b.jpg');
 //figure
 f=scf(2);
 a= gca ();
 t1 = -10:1/100:10;
 plot2d (t1 ,y)
 xtitle ( ' Output Re spons e ' , ' t ' , ' y ( t ) ' );
 xs2jpg(2, 'problem33-plot-c.jpg');
//example 3.23<iii>
//Find the response using convolution sum
clear ;
 close ;
 clc ;
 t = -5:1/100:5;
 for i =1: length (t)
 if t(i) <0 then
 h(i)=0;
 x(i)=0;
 elseif t(i)<1 then
 h(i)=0;
 x(i)=1;
elseif t(i)<=4 then h(i)=1;x(i)=1;
elseif t(i)<=7 then
    h(i)=0;
    x(i)=1;
 end
 end
 y = convol (x,h) ;
 //figure
  f=scf(0);
 plot2d (t,h)
 xtitle ( ' Input Re spons e ' , ' t ' , ' h ( t ) ' );
 xs2jpg(0, 'problem34-plot-a.jpg');
// figure
 f=scf(1);
 plot2d (t,x)
 xtitle ( ' Input Re spons e ' , ' t ' , ' x ( t ) ' );
 xs2jpg(1, 'problem34-plot-b.jpg');
 //figure
  f=scf(2);
 t1 = -10:1/100:10;
 plot2d (t1 ,y)
 xtitle ( ' Output Re spons e ' , ' t ' , ' y ( t ) ' );
 xs2jpg(2, 'problem34-plot-c.jpg');
 
 

 

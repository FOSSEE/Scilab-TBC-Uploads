//Example 3.22
clear ;
 close ;
 clc ;
 t = -5:1/100:5;
 for i =1: length (t)
 if t(i) <0 then
 h(i)=0;
 x(i)=0;
 else
 h(i)=1;
 x(i)=1;
 end
 end
 y = convol (x,h) ;
 //figure
 f=scf(0);
 plot2d (t,h)
 xtitle ( ' Input Re spons e ' , ' t ' , ' h ( t ) ' );
 xs2jpg(0, 'problem31-plot-a.jpg');
 //figure
 f=scf(1);
 plot2d (t,x)
 xtitle ( ' Input Re spons e ' , ' t ' , ' x ( t ) ' );
 xs2jpg(0, 'problem31-plot-b.jpg');
 //figure
 f=scf(2);
 a= gca ();
 t1 = -10:1/100:10;
 plot2d (t1 ,y)
 xtitle ( ' Output Re spons e ' , ' t ' , ' y ( t ) ' );
 xs2jpg(0, 'problem31-plot-c.jpg');
 

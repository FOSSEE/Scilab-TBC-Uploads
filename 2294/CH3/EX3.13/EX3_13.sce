//example 3.13
//Represent the sequence as sum of shifted unit impulse.
clear ;
 close ;
 clc ;
 t= -1:1:4;T=3;
 x=[3 2 -1 2 4 1];
 for i =1: length (t)
 if modulo(t(i),3)==0 then
 h(i)=1;
else
 h(i)=0;
 end
 end
 y = convol(x,h);
 //figure
 f=scf(0);
 plot2d (t,h)
 xtitle ( ' Input Re spons e ' , ' t ' , ' h ( t ) ' );
  xs2jpg(0, 'problem38-plot-a.jpg');
// figure
f=scf(1);
 plot2d (t,x)
 xtitle ( ' Input Re spons e ' , ' t' , ' x ( t ) ' );
  xs2jpg(1, 'problem38-plot-b.jpg');
 //figure
 f=scf(2);
 a= gca ();
 t1 =-2:1:8;
 plot2d (t1 ,y)
 xtitle ( ' Output Re spons e ' , ' t ' , ' y ( t) ' );
  xs2jpg(2, 'problem38-plot-c.jpg');

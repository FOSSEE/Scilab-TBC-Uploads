//example 3.27<i>
//Find the convolution sum
clear ;
clc;
 close ;
 t= -10:1/100:10;
 for i =1: length (t)
 if t(i) <0 then
 h(i)=0;
 x(i)=0;
 else
 h(i)=(1/2)^t(i);
 x(i)=cos(%pi*t(i));
 end
 end
 y = convol (x,h) ;
// figure
  f=scf(0);
 plot2d (t,h)
 xtitle ( ' Input Re spons e ' , ' t ' , ' h ( t ) ' );
 xs2jpg(0, 'EX3_27_1-plot-a.jpg');
 //figure
   f=scf(1);
 plot2d (t,x)
 xtitle ( ' Input Re spons e ' , ' t' , ' x ( t ) ' );
 xs2jpg(1, 'EX3_27_1-plot-b.jpg');
 //figure
   f=scf(2);
 t1 = -20:1/100:20;
 plot2d (t1 ,y)
 xtitle ( ' Output Re spons e ' , ' t ' , ' y ( t) ' );
 xs2jpg(2, 'EX3_27_1-plot-c.jpg');
//example 3.27<ii>
//Find the response using convolution sum
clear ;
 close ;
 clc ;
 t = -10:1/100:10;
 for i =1: length (t)
 if t(i) <0 then
 h(i)=0;
 x(i)=(1/3)^(-t(i));
 elseif t(i)==0 then
 h(i)=0;
 x(i)=0;
 else h(i)=1;x(i)=0;
 end
 end
 y = convol (x,h) ;
 //figure
 f=scf(0);
 plot2d (t,h)
 xtitle ( ' Input Re spons e ' , ' t ' , ' h ( t ) ' );
  xs2jpg(0, 'EX3_27_2-plot-a.jpg');
 //figure
 f=scf(1);
 plot2d (t,x)
 xtitle ( ' Input Re spons e ' , ' t ' , ' x ( t ) ' );
  xs2jpg(1, 'EX3_27_2-plot-b.jpg');
 //figure
 f=scf(2);
 a= gca ();
 t1 = -20:1/100:20;
 plot2d (t1 ,y)
 xtitle ( ' Output Re spons e ' , ' t ' , ' y ( t ) ' );
  xs2jpg(2, 'EX3_27_2-plot-c.jpg');
//example 3.27<iii>
//Find the response using convolution sum
clear ;
 close ;
 clc ;
 t = -5:1/100:5;
 for i =1: length (t)
 if t(i) <0 then
 h(i)=0;
 x(i)=0;
 elseif t(i)<=10 then
 x(i)=(1/2)^t(i);
 h(i)=1;
else
    h(i)=0;
    x(i)=(1/2)^t(i);
 end
 end
 y = convol (x,h) ;
 //figure
 f=scf(0);
 plot2d (t,h)
 xtitle ( ' Input Re spons e ' , ' t ' , ' h ( t ) ' );
 xs2jpg(0, 'EX3_27_3-plot-a.jpg');
// figure
f=scf(1);
 plot2d (t,x)
 xtitle ( ' Input Re spons e ' , ' t ' , ' x ( t ) ' );
 xs2jpg(1, 'EX3_27_3-plot-b.jpg');
 //figure
 f=scf(2);
 a= gca ();
 t1 = -10:1/100:10;
 plot2d (t1 ,y)
 xtitle ( ' Output Re spons e ' , ' t ' , ' y ( t ) ' );
 xs2jpg(2, 'EX3_27_3-plot-c.jpg');
 
 

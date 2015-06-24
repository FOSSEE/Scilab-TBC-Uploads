//Example 3.21
//Determine the response of the below relaxed system.
clc;
close;
 n=-10:.01:10;
 for i=1:length(n)
     if n(i)<0 then
         h(i)=0;x(i)=0;
     else
         h(i)=(1/3)^n(i);
         x(i)=2^n(i);
     end
 end
 y=convol(h,x);
 //figure
 f=scf(0);
 plot(n,h,'black');
 xtitle('input response1','n','h(n)');
 xs2jpg(0, 'problem29-plot-a.jpg');
// figure
f=scf(1);
 plot(n,x,'red');
 xtitle('input response2','n','x(n)');
 xs2jpg(1, 'problem29-plot-b.jpg');
// figure
f=scf(2);
 n1=-20:.01:20;
 plot(n1,y,'green');
 xtitle('output response','n','y(n)');
 xs2jpg(2, 'problem29-plot-c.jpg');
 

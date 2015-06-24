clear;
clc;
a=8.636*10^-2,b=4.318*10^-2,f=4*10^9;
u=3*10^8;
fc=u/(2*a);
disp(fc*10^-9,'Cut off frquency = ');
if(f>fc) then disp('As f>fc so TE10 mode will propagate')
else disp('It will not propagate') 
end
Up=u/sqrt(1-(fc/f)^2);
disp(Up*10^-6,'Phase velocity in Mm/sec = ');
Ug=u*u/Up;
disp(Ug*10^-6,'Group velocity in Mm/sec = ');
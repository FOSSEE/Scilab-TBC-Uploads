clc;
close();
//page no 239
//prob no. 7.12
delta_f=75;   //kHz
fm=[.025 .075 .75 1.5 5 10 15]   //in kHz
function B=Beta(fm,delta_f)
B=delta_f *(1 ./fm);
endfunction
function Bt=Bandwidth(fm,delta_f)
Bt(1:3) = 2 *delta_f;
for i=4:7
   Bt(i) = 2 *(delta_f + fm(i)); 
end
endfunction
B=Beta(fm,delta_f);
Bt=Bandwidth(fm,delta_f);   //applying carsom's rule
disp('Table - 7.2');
disp('fm(kHz)     Beta       Bt(kHz)');
for i=1:7
mprintf('%4.3f         ',fm(i));
mprintf('%4.1f        ',B(i));
mprintf('%i\n',Bt(i));
end
plot(fm,Bt);
xtitle('Bandwidth of FM','fm,kHz','Bt,kHz')

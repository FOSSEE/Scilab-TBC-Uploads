clc;
close();
//page no 201
//prob no. 6.11
//All voltage in V
function {As]=sideband_amplitude(m,A)
    As=m*A/2;  //As:sideband amplitude
               //m:modulation factor
               //A:carrier amplitude
endfunction
A=10;
m=0;
disp(sideband_amplitude(m,A),'(a) For m=0, sideband amplitude is ');
m=0.5;
disp(sideband_amplitude(m,A),'(b) For m=0.5, sideband amplitude is ');
m=1;
disp(sideband_amplitude(m,A),'(c) For m=1, sideband amplitude is ');

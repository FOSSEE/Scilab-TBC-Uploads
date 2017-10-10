disp('chap 14 , ex 2')
disp(' given')
disp('The waveform is t for t>0,t<1 and 1 for t>1,t<2')
function y1=myfunction(t),y1=t^2,endfunction
function y2=second(t),y2=t^0,endfunction
i1=intg(0,1,myfunction)//integration from 0 to1 (rms current)
i2=intg(1,2,second)//integration from 1 to 2(rms current)
i3=0.5*(i1+i2);
disp('The rms value of current is')
disp(sqrt(i3))//i=sqrt(1/2(integ of t^2 from 0 to 1+ integ of 1 from 1 to 2))
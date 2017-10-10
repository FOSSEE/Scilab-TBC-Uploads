Syms t,s 
disp('By kvl equation\n i(s)=1/s+1')
f=ilt((s^0)/(s+1),s,t)
printf("current in time domain by laplace transform is\n")
printf("i(t)=")
disp(f)

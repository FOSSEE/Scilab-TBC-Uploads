//clear//
//Caption:Matched Filter output of rectangular pulse
//Figure7.41
//Matched Filter Output
clear;
clc;
T =4;
a =2;
t = 0:T;
g = 2*ones(1,T+1);
h  =abs(convol(g,g));
for i = 1:length(h)
  if(h(i)<0.01)
    h(i) =0;
  end
end
h = h-T;
t1 = 0:length(h)-1;
figure
a =gca();
a.data_bounds = [0,0;6,4];
plot2d(t,g,5)
xlabel('t--->')
ylabel('g(t)---->')
title('Rectangular pulse duration T = 4, a =2')
figure
plot2d(t1,h,6)
xlabel('t--->')
ylabel('Matched Filter output')
title('Output of filter matched to rectangular pulse g(t)')

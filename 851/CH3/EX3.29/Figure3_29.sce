//clear//
//Implementation of LMS ADAPTIVE FILTER
//For noise cancellation application
clear;
clc;
close;
order = 18;
t =0:0.01:1;
x = sin(2*%pi*5*t);
noise =rand(1,length(x));
x_n = x+noise;
ref_noise = noise*rand(10);
w = zeros(order,1);
mu = 0.01*(sum(x.^2)/length(x));
N = length(x);
for k =1:1010
  for i = 1:N-order-1
    buffer = ref_noise(i:i+order-1);
    desired(i) = x_n(i)-buffer*w;
    w = w+(buffer*mu*desired(i))';
  end
end
subplot(4,1,1)
plot2d(t,x)
title('Orignal Input Signal')
subplot(4,1,2)
plot2d(t,noise,2)
title('random noise')
subplot(4,1,3)
plot2d(t,x_n,5)
title('Signal+noise')
subplot(4,1,4)
plot(desired)
title('noise removed signal')

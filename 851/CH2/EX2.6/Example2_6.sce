//clear//
//Caption:Channel Capacity of a Binary Symmetric Channel
//Example2.6:Channel Capacity of Binary Symmetri Channel
clear;
close;
clc;
p = 0:0.01:0.5;
for i =1:length(p)
  if(i~=1)
    C(i) = 1+p(i)*log2(p(i))+(1-p(i))*log2((1-p(i)));
  elseif(i==1)
    C(i) =1;
  elseif(i==length(p))
    C(i)=0;
  end
end
plot2d(p,C,5)
xlabel('Transition Probility, p')
ylabel('Channel Capacity, C')
title('Figure 2.10 Variation of channel capacity of a binary symmetric channel with transition probility p')

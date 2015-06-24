//Example 3.25<i>
//Find whether the system is causal and stable.
clear all;
 clc ;
 n = -5:5;
 for i =1: length (n)
 if(n(i) <=0)
 h(i)=  2^n(i);
 else
 h(i)=0;
 end
 end
 causal =%t;
 for i =1: length (n)
 if n(i) <0 & h(i) ~=0 then
 causal =%f;
 end
 end
 disp (causal,'The statement that the system is causal is:');
  n =0:100000;
 for i =1: length (n)
 if(n(i) <=0)
 h(i)=  2^n(i);
 else
 h(i)=0;
 end
 end
 bibo =sum(h);
 if (bibo < %inf ) then
 disp (" system is bibo stable ");
 else
 disp (" systes not stable ");
end
//Example 3.25<ii>
//Find whether the system is causal and stable.
clear all;
 clc ;
 n = -5:5;
 for i =1: length (n)
 if(n(i) >=1)
 h(i)=  exp(2*n(i));
 else
 h(i)=0;
 end
 end
 causal =%t;
 for i =1: length (n)
 if n(i) <0 & h(i) ~=0 then
 causal =%f;
 end
 end
 disp (causal,'The statement that the system is causal is:');
  n =0:100000;
 for i =1: length (n)
 if(n(i) >=1)
 h(i)=  exp(2*n(i));
 else
 h(i)=0;
 end
 end
 bibo =sum(h);
 if (bibo < %inf ) then
 disp (" system is bibo stable ");
 else
 disp (" system not stable ");
 end
//Example 3.25<iii>
//Find whether the system is causal and stable.
clear all;
 clc ;
 n = -5:5;
 for i =1: length (n)
 if(n(i) <=3)
 h(i)=  (5*n(i));
 else
 h(i)=0;
 end
 end
 causal =%t;
 for i =1: length (n)
 if n(i) <0 & h(i) ~=0 then
 causal =%f;
 end
 end
 disp (causal,'The statement that the system is causal is:');
  n =0:100000;
 for i =1: length (n)
 if(n(i) <=1)
 h(i)=  (5*n(i));
 else
 h(i)=0;
 end
 end
 bibo =sum(h);
 if (bibo < %inf ) then
 disp (" system is bibo stable ");
 else
 disp (" system not stable ");
 end
//Example 3.2<iv>
//Find whether the system is causal and stable.
clear all;
 clc ;
 n = -5:5;
 for i =1: length (n)
 h(i)=  exp(-6*abs(n(i)));
 end
 causal =%t;
 for i =1: length (n)
 if n(i) <0 & h(i) ~=0 then
 causal =%f;
 end
 end
 disp (causal,'The statement that the system is causal is:');
  n =0:100000;
 for i =1: length (n)
 h(i)= exp(-6*abs(n(i)));
 end
 bibo =sum(h);
 if (bibo < %inf ) then
 disp (" system is bibo stable ");
 else
 disp (" system not stable ");
 end


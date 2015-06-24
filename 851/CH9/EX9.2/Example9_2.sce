//clear//
//Caption:Maximum length sequence property
//Example9.2 and Figure 9.2: Maximum-length sequence 
//Period of PN Sequence N = 7
//Properites of maximum-length sequence
clc;
//Assign Initial value for PN generator
x0= 1;
x1= 0;
x2 =0;
x3 =0;
N = input('Enter the period of the signal')
one_count = 0;
zero_count = 0;
for i =1:N
  x3 =x2;
  x2 =x1;
  x1 = x0;
  x0 =xor(x1,x3);
  disp(i,'The PN sequence at step')
  x = [x1 x2 x3];
  disp(x,'x=')
  C(i) = x3;
  if(C(i)==1)
    C_level(i)=1;
    one_count = one_count+1;
  elseif(C(i)==0)
    C_level(i)=-1;
    zero_count = zero_count+1;
  end
end
disp(C,'Output Sequence')//refer equation 9.4
disp(C_level,'Output Sequence levels')//refer equation 9.5
if(zero_count < one_count)
  disp(one_count,'Number of 1s in the given PN sequence')
  disp(zero_count,'Number of 0s in the given PN sequence')
  disp('Property 1 (Balance property) is satisified')
end
Rc_tuo = corr(C_level,N);
t = 1:2*length(C_level);
//
figure
a =gca();
a.x_location = "origin";
plot2d(t,[C_level; C_level])
xlabel('                                        t')
title('Waveform of maximum-length sequence [0 0 1 1 1 0 1 0 0 1 1 1 0 1]')
//
figure
a =gca();
a.x_location ="origin";
a.y_location ="origin";
plot2d([-length(Rc_tuo)+1:-1,0:length(Rc_tuo)-1],[Rc_tuo($:-1:2),Rc_tuo],5)
xlabel('                                                                      tuo')
ylabel('                                                                  Rc(tuo)')
title('Autocorrelation of maximum-length sequence')

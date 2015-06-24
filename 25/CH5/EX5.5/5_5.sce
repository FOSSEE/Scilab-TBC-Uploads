//example:-5.5,page no.-226.
//program to determine the reciprccity and lossless of two port network and find return loss.
syms S Rl tao;
S=[0.1 0.8*%i;0.8*%i 0.2]; // s-parameter matrix.
if (S(1,2)==S(2,1))
  disp("the network is reciprocal.")
else
  disp("the network is not reciprocal.")
end
if (S(1,1)^2+S(1,2)^2==1)
  disp("the network is lossless.")
else
  disp("the network is lossy.")
end
tao=S(1,1)-(S(1,2)*S(2,1))/(1+S(2,2));  //input reflection coefficient.
Rl=-20*log10(abs(tao));  // return loss in dB.
//result
disp(Rl,'return loss at port 1 in dB=')
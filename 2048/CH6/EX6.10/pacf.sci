// Determination of the PACF of AR(p) process, as explained in Sec. 6.4.5.
// 6.10

function [ajj] = pacf(v,M)
exec('label.sci',-1);
rvvn = xcorr(v,'coeff'); 
len = length(rvvn);
zero = (len+1)/2;
rvvn0 = rvvn(zero);
rvvn_one_side = rvvn(zero+1:len);
ajj = [];
exec('pacf_mat.sci',-1);
for j = 1:M,
  ajj = [ajj pacf_mat(rvvn0,rvvn_one_side,j,1)];
end
p = 1:length(ajj);
N = length(p);
lim = 2/sqrt(length(v));

// Plot the figure
plot(p,ajj,p,ajj,'o',p,lim*ones(N,1),'--',...
               p,-lim*ones(N,1),'--');
label('',4,'Lag','PACF',4);
endfunction;

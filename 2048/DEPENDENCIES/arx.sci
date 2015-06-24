// ARX model parameter estimation
// Computes Covariance matrix
// Computes Noisevariance of a process

function [thetaN,covt,nvar,res] = arx(data,na,nb,nk)
az = max(na,nb+nk-1);
zer = zeros(az,1);
zd = data;
// Zeros appended
zd1(:,1) = [zer; zd(:,1)];
zd1(:,2) = [zer; zd(:,2)];
[r,c] = size(zd1);
t = az+1:r;
yt = zd1(:,1); ut = zd1(:,2);
yt1 = yt'; ut1 = ut'; // row vector
len1 = length(yt1);
yt2 = zeros(1,len1-az); ut2 = zeros(1,len1-az);

// arx(Data,[na nb nk]) 
  for i=1:na
    yt2 = [yt2; -yt1(t-i)];
  end;
  for i=nk:nb+nk-1
    ut2 = [ut2; ut1(t-i)];
  end;
[r1_a,c1_a] = size(yt2); [r2_a,c2_a] = size(ut2);
phit = [yt2(2:r1_a,:); ut2(2:r2_a,:)];
m1 = phit*phit';
[qm,rm] = qr(m1);
m2 = phit*zd(:,1);
thetaN = inv(rm)*qm'*m2;
// thetaN = inv(m1)*m2;
// thetaN = m1\m2;

[r1,c1] = size(thetaN);
a = thetaN(1:na); b = thetaN(na+1:r1);

// Sum of squared residuals

yhat = phit'*thetaN;
res = zd(:,1) - yhat;
N = length(res);
q = rank(phit);
ssr = res'*res;
sig2 = ssr/(N-q);
nvar = sqrt(sig2);
cov = inv(m1);
covt = diag(cov);

a = thetaN(1:na); b = thetaN(na+1:r1);
cova = covt(1:na); covb = covt(na+1:r1);
x = poly(0,'x');
disp('Discrete time model: A(x)y(t) = B(x)u(t) + e(t)');
A = poly([1 a'],'x','coeff');
cov_a = [0 cova'];
b1 = zeros(1,nk);
B = poly([b1 b'],'x','coeff');
cov_b = covb';


  
//////////////////////////////////////
//////////////////////////////////////

////////// Model Display /////////////

function disp_mod(N,covN)
len = length(covN);
B1 = pol2str(N);
ind = strindex(B1,['+','-']);  
ind = ind - 1;
B2 = strsplit(B1,ind);
covB = string(covN);
  
  if ascii(B2(1)) == 32
  B2 = B2(2:len+1); 
  end; 
  
  B3(1) = ' ';
  for i=1:len
    B3(i) = strsubst(B2(i),'*x','(+-' + covB(i) + ')*x');
  end;

  B4 = B3(1);
  
  for i=2:len
  B4 = B4 + ' ' + B3(i);
  end;

disp(B4);
endfunction;
//////////////////////////////////////
//////////////////////////////////////

  if na==0
    disp('A(x) = 1');
  else
    disp('A(x) = ');
    disp_mod(A,cov_a);
  end;
  
  if nb~=0
    disp('B(x) = ');
    disp_mod(B,cov_b);
  end;



endfunction;


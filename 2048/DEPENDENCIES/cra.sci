
// [ir,r,cl] = cra(z,M,n)
// M: No. of lags
// n: Order of pre whitening filter
// z is of the form:
// z = [y u]
// y and u are column matrices

function [ir,r,cl] = cra(z,varargin)
len = length(varargin);
  
    if len==0,M = 20;n = 10;
    elseif len==1,M = varargin(1);n=10;
    else M = varargin(1);n = varargin(2);
    end;

[ro,co] = size(z);

a1 = armax1(n,-1,0,z(:,2)',zeros(1,ro));
[A,B,D] = arma2p(a1);
a11 = coeff(A);
z22(1,:) = filt(a11,1,z(:,1)');
z22(2,:) = filt(a11,1,z(:,2)');
Covr = covf(z22',M+1);
scir=Covr(4,1); 
sccf=sqrt(Covr(1,1)*Covr(4,1));

ir = Covr(2,:)'/scir;

r(:,1) = -M:M;
r(:,2) = [Covr(1,M+1:-1:1) Covr(1,2:M+1)]'
r(:,3) = [Covr(4,M+1:-1:1) Covr(4,2:M+1)]'
rhoyu = Covr(3,:)'/sccf;
rhouy = Covr(2,:)'/sccf;
r(:,4) = [rhoyu(M+1:-1:1); rhouy(2:M+1)];

sdreu=2.58*sqrt(r(:,3)'*r(:,2))/scir/sqrt(ro)*ones(2*M+1,1);
cl=sdreu(1);

timeax=[0:length(ir)-1];
plot(timeax,ir,'bo');
plot2d3(timeax,ir,style = 2);
plot(timeax,cl*ones(1,length(ir)),'b-.');
plot(timeax,-cl*ones(1,length(ir)),'b-.');
xtitle('Impulse response estimate','Lags');
xgrid();

endfunction;
  


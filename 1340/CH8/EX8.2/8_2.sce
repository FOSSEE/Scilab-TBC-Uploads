clc;
s = %s;
f = (s+3)/(s*(s+1)*(s+2)*(s+4));
disp(f,"G(s)=");
evans(f);
xgrid(2);
printf("\n  Poles at 0,-1,-2 and -4, zero at -3  \n");
x = denom(f);
y = numer(f);

xr = roots(x);
yr = roots(y);

[kx,lx]=size(xr);
[ky,ly]=size(yr);

sumX=0, sumY=0;
for j  = 1:kx
    sumX = sumX + xr(j);
end
for j  = 1:ky
    sumY = sumY + yr(j);
end
disp((sumX-sumY)/(kx-ky),"Real axis intercept:");
printf("\n angle = (2k+1)*180/(sum of finite poles-sum of finte zeroes)");
printf("\n for k=0")
    theta = 180/(kx-ky);
    disp(theta,"angles made by the asymptote to the real axis for :");
printf("1 finite zero and 3 infinite zeroes");
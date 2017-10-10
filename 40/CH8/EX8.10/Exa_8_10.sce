//DFS of sampled periodic signals
xn=[0 ones(2:16) 0 -ones(18:32)];
XDFS=0.032*fft(xn,-1);
for i=1:length(XDFS)
    if (abs(XDFS(i))<0.000001) then
        XDFS(i)=0;
    end
end
disp(XDFS,'The DFS of x[n] is');
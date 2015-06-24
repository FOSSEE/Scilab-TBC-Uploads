X=[75 73 60 70 86; 78 71 64 72 90; 80 69 62 70 85; 73 67 63 80 92 ];
Xidot = zeros(4,1);
for i=1:4
    for j=1:5
        Xidot(i)=Xidot(i) + X(i,j);
    end
end
Xidot = Xidot/5;
Xjdot = zeros(5,1);
for j=1:5
    for i=1:4
        Xjdot(j)=Xjdot(j) + X(i,j);
    end
end
Xjdot = Xjdot/4;
Xdotdot = sum(Xidot)/4;
//disp(Xdotdot)
meanhat = Xdotdot;
alphahat = Xidot - meanhat;
betahat = Xjdot - meanhat; 
disp(meanhat, "The estimator of the mean is");
disp("The alphas are-")
disp(alphahat)
disp("The betas are-")
disp(betahat)
function [Z]= Norm_Dis_Diff_Two_Mean(X1,X2,Sigma1,Sigma2,n1,n2)
    u1 =0;
    u2 =0;
    Sigma12 = (Sigma1/n1)+(Sigma2/n2);
    Z = ((X1-X2)-(u1-u2))/(sqrt(Sigma12));
endfunction
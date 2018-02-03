// Kalman filter example of estimating a constant
// 14.4

function [xhat,P,y] = kal_ex(x,xline,M)
y = x + rand();
Q = 0; R = 1;
xhat_ = xline;
P_ = M + Q;
K = P_/(P_+R);
P = (1-K)*P_;
xhat = xhat_ + K*(y-xhat_);
endfunction;

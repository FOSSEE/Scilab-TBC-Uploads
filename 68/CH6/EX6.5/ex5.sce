// Example 6.5 : Determine 3dB frequency 
// High frequency response of an amplifier can be characterized by th transfer function
// F_H(s)=(1-s/10^5)/(1+s/10^4)(1+s/4*10^4)
w_H=1/sqrt(1/10^8+1/(16*10^8)-2/10^10); // w_H=1/sqrt(1/w_P1^2+1/w_P2^2-2/w_Z1^2-2w_Z2^2)
disp(w_H,"w_H (rad/s)")
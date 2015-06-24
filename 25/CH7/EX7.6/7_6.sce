// example:-7.6,page no.-361.
// program to find the mode number and Q of given resonator.
fo=94*10^9;d=0.04;c=3*10^8;muo=4*%pi*10^-7;sigma=5.813*10^7;
l=(2*d*fo)/c; // mode number.
Rs=sqrt((2*%pi*fo*muo)/(2*sigma));
Q=(%pi*l*377)/(4*Rs);
disp(l,'mode number = ')
disp(Q,'Q = ')
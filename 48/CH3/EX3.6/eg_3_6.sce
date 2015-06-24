clear
clc
disp("T(A,B,C,D)=A^B+ABD+AB^CD^+BC");
disp("T(A,B,C,D)=B(A^+AD)+C(AD^B^+B)");
disp("T(A,B,C,D)=B(A^+D)+C(AD^+B)");
disp("T(A,B,C,D)=A^B+BD+ACD^+BC");
disp("T(A,B,C,D)=A^B+BD+ACD^+BC(A+A^)");
disp("T(A,B,C,D)=A^B+A^BC+ABC+BD+ACD^");
disp("T(A,B,C,D)=A^B(1+C)+ABC+BD+ACD^");
disp("T(A,B,C,D)=A^B+ABC+BD+ACD^");
disp("**Now apply consensus theorem for 2nd 3rd and 4th terms**");
disp("let x=D,y=B,z=AC");
disp("T(A,B,C,D)=A^B+BD+ACD^");
//error no output
//ques11

disp('To find the inverse laplace transform of the function');
syms s t a
f=s/(s^4+4*a^4);
il=ilaplace(f,s,t);
disp(il);

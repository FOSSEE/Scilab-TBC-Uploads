function[t] = students_t_distri(X,u,std,n) 
t = (X-u)/(std/sqrt(n));
endfunction
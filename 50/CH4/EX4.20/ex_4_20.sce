// example 4.20;
// hermite interpolation:

x=[-1 0 1];

f=[1  1 3];

fp=[-5 1 7];

 P= hermiteinterpol(x,f,fp);
 
// hence; 
disp('f(-0.5)=3/8');
disp('f(0.5)=11/8');
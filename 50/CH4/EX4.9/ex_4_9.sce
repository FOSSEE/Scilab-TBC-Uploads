// example 4.9
// caption :obtain the polinomial of degree 2 

x=[0 1 3];
f=[1 3 55];
n=2;

// 1) iterated interpolation;


[L012,L02,L01]=iteratedinterpol (x,f,n)

//  2) newton divided diffrences interpolation;


 P2=NDDinterpol2 (x,f)
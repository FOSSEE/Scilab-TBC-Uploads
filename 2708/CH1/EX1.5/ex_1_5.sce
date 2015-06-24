//Example 1.5 // distance between coherent source
clc;
//given data :
b=9.424D-4;//fringes width in m
w=5890D-10;// wavelength in m
a=0.05;// distance between source & prism in m
c=0.75;// distance between prism & screen in m
D=a+c;//distance between source and screen in m
d=(D*w)/b;//distance between coherent source
disp(d,"distance between coherent source in meter")

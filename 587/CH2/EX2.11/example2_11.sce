clear;
clc;

//Example2.11[Heat Conduction in a Plane Wall]
//Given:-
k_wall=1.2;//Thermal conductivity of wall[W/m.degree Celcius]
L=0.2;//Thickness of wall[m]
As=15;//Surface area[m^2]
T1=120,T2=50;//The two sides of the wall are maintained at these constant temperatures[degree Celcius]
//Solution (a)
disp("Differential equation can be expressed as d^2(T)/(dx^2)=0")
disp("with boundary conditions ")
disp("degree Celcius",T1,"T(0)=T1=")
disp("degree Celcius",T2,"T(L)=T2=")
disp("integrating this we get,")
disp("dT/dx=C1", ,"where C1 is an arbitrary constant")
disp("integrating we obtain temperature to follow following relation :-")
disp("and substituting values in above equation","T(x)=((T2-T1)/L)*x+T1 ")
T3=(((T2-T1)/L)*(0.1))+T1;
disp("degree Celcius",T3,"The value of temperature at x=0.1m is")
Q_wall=-k_wall*As*((T2-T1)/L);//[W]
disp("W",Q_wall,"The rate of heat conduction through the wall is")
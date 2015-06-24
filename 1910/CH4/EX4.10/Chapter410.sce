// Display mode
mode(0);
// Display warning for floating point exception
ieee(1);
clear;
clc;
disp("Introduction to heat transfer by S.K.Som, Chapter 4, Example 10")
//An iron beam of rectangular cross section of size length,L=300mm by breadth,B=200 mm is used in the construction of a building
//Initially the beam is at a uniform temprature(Ti) of 30°C.
//Due to an accidental fire,the beam is suddenly exposed to hot gases at temprature,Tinf=730°C,with a convective heat transfer coefficient(h) of 100 W/(m^2*K)
//To determine the time required for the centre plane of the beam to reach a temprature(To) of 310°C.
To=310;
Tinf=730;
Ti=30;
//Take thermal conductivity k=73W/(m*K) and thermal diffusivity of the beam alpha=2.034*10^-5m^2/s 
alpha=2.034*10^-5; 
k=73; 
h=100; 
//The rectangular iron beam can be considered as an intersection of an infinite plate 1 having thickness 2*L1=300mm and a second infinite plate 2 of thickness 2*L2=200mm 
L1=0.15;//in metre
L2=0.10;//in metre
//Here the faactor X=((To-Tinf)/(Ti-Tinf))
disp("The factor((To-Tinf)/(Ti-Tinf)) is ")
X=((To-Tinf)/(Ti-Tinf))
//Therefore we can write 0.6=((To-Tinf)/(Ti-Tinf))plate 1 *((To-Tinf)/(Ti-Tinf))plate2
//A straight forward solution is not possible.We have to adopt an iterative method of solution 
//At first ,a value of time(t) is assumed to determine the centre-line temprature of the beam.The value of t at which((To-Tinf)/(Ti-Tinf))beam =0.6 is satisfied
//Let us first assume time, t=900s
t=900;
disp("For plate 1")
//For plate1 Biot number Bi1=h*L1/k 
Bi1=h*L1/k  
Y=1/Bi1
//Fourier number(Fo1) is
Fo1=alpha*t/L1^2
//At Fo=0.814 and (1/Bi)=4.87...We read from graphs  A=((To-Tinf)/(Ti-Tinf))plate1= 0.85
A=0.85;
disp("For plate 2")
//For plate1 Biot number Bi2=h*L2/k 
Bi2=h*L2/k  
Y=1/Bi2
//Fourier number(Fo2) is
Fo2=alpha*t/L2^2
//At Fo=1.83 and (1/Bi)=7.3...We read from graphs  B=((To-Tinf)/(Ti-Tinf))plate2= 0.8
B=0.8;
//Therefore ((To-Tinf)/(Ti-Tinf))plate1*((To-Tinf)/(Ti-Tinf))plate2=A*B
T=A*B
//Since the calculated value of 0.68 is greater than the required value of 0.60 and Tinf>To>Ti,The assume dvalue of t is less.
//So let us take time,t=1200s for the second iteration
t=1200;
disp("For plate 1")
//For plate1 Biot number Bi1=h*L1/k 
Bi1=h*L1/k  
Y=1/Bi1
//Fourier number (Fo1)
Fo1=alpha*t/L1^2
//At Fo=1.08 and (1/Bi)=4.87...We read from graphs  A=((To-Tinf)/(Ti-Tinf))plate1= 0.83
A=0.83;
disp("For plate 2")
//For plate1 Biot number Bi2=h*L2/k 
Bi2=h*L2/k  
Y=1/Bi2
//Fourier number (Fo2)
Fo2=alpha*t/L2^2
//At Fo=2.44 and (1/Bi)=7.3...We read from graphs  B=((To-Tinf)/(Ti-Tinf))plate2= 0.72
B=0.72;
//Therefore ((To-Tinf)/(Ti-Tinf))plate1*((To-Tinf)/(Ti-Tinf))plate2=A*B
T=A*B
disp("The calculated value is very close to the required value of 0.6.Hence the time required for the centre of the beam to reach 310°C is nearly 1200s or 20 minutes.") 
 
 
 
 
 
 
 
 
 
 
 

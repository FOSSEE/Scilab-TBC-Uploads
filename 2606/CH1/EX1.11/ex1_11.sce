//Page Number: 1.14
//Example 1.11
clc;

//(a)

//Given
//Signal is x(t) = rect(t)
//rect(t) = 1 for -a< |t| < a and 0 elsewhere
//Therefore
//We find out fourier transform of x(t)= 1 for -a< |t| < a thus,
x=1;
a= 200; //Assume 
t= -a : 1 : a; //range for fourier transform
y=fft(x);
disp(y,'Fourier transform of x(t)=');


//(b)

//Given
//Signal is x(t) = rect(t)
//rect(t) = 1 for -a/4< |t| < a/4 and 0 elsewhere
//Therefore
//We find out fourier transform of x(t)= 1 for -a/4< |t| < a/4 thus,
x=1;
a= 200; //Assume 
t= -a/4 : 1 : a/4;//range for fourer transform
y=fft(x);
disp(y,'Fourier transform of x(t)=');

//(c)

//Given
//Signal is x(t) = rect(t)
//rect(t) = 1 for b < |t| < b + a/2 and 0 elsewhere
//Therefore
//We find out fourier transform of x(t)= 1 for b < |t| < b+ a/2 thus,
x=1;
a= 200; //Assume 
b=100; //Assume
t= b : 1 : (b+(a/2));//range for fourer transform
y=fft(x);
disp(y,'Fourier transform of x(t)=');


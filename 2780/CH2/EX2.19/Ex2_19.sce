clc
//to calculate thickness of the film
lambda1=6.1*10^-7 //wavelength in m
lambda2=6*10^-7 // wavelength in m
//the two dark consecutive fringes are overlapping for the wavelength lambda1 and lambda2 respectively
//then, n*lambda1=(n+1)*lambda2
//we get,
n=lambda2/(lambda1-lambda2)
sini=4/5
mu=4/3
//formula is mu=sini/sinr
sinr=0.6
cosr=sqrt(1-(sinr)^2)
t=n*lambda1/(2*mu*cosr)
disp("the thickness of the film is t="+string(t)+"m")

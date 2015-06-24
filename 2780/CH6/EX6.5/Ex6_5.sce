clc
//to calculate maximum and minimum value of phase constant
lambda=0.8*10^-6 //wavelength in micrometre
n1=1.6*10^-6 
                   //refractive indices in micrometre
n2=1.44*10^-6
maximum=(2*%pi*n1)/lambda
minimum=(2*%pi*n2)/lambda
disp("maximum value of phase constant is maximum="+string(maximum)+"radian/micrometre")
disp("minimum value of phase constant is minimum="+string(minimum)+"radian/micrametre")

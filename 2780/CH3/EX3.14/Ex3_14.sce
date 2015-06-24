clc
//to calculate number of lines in the grating
//theta1=theta2=30 degree
//sin theta1=sin theta2=1/2
lambda1=6*10^-5 
                      //wavelength in cm
lambda2=4.5*10^-5
//let (e+d)=E 
//formula is (e+d)*sin theta1=n*lambda1----------eq(1)
//(e+d)*sin theta2=(n+1)*lambda2----------eq(2)
//we get,
n=lambda2/(lambda1-lambda2)  //order of spectrum
E=n*lambda1/sin(%pi/6)
number=1/E
disp("number of lines is number="+string(number)+"unitless")

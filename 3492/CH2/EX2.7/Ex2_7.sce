clc
//Chapter2
//Ex_2.7
//Given
n=1.2
To=293 //in kelvin
alpha_o=n/To
printf("Theoretical value of TCR at 293K is %f which is in well agreement with exprimental value",alpha_o)
alpha_o=0.00393 //experimental value
n=alpha_o*To
disp(n,"Theoretical value of n at 293K is in well agreement with exprimental value")

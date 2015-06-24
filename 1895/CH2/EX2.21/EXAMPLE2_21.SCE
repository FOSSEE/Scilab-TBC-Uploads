//ANALOG AND DIGITAL COMMUNICATION
//BY Dr.SANJAY SHARMA
//CHAPTER 2
//AMPLITUDE MODULATION
clear all;
clc;
printf("EXAMPLE 2.21(PAGENO 111)");

//given
p_t = 50*10^3//total power
m_a = .707//modulation index
z = 50+0*%i;//load

//calculations

//first case
p_x = .5*(m_a)^2;
p_c = p_t/(1+p_x)//carrier power

//second case
n = ((p_c*p_x)/(p_c+(p_c*p_x)))*100;//transmission efficiency

//third case
 a_c = sqrt(2*z*p_c);//peak carrier amplitude
 
 //results
 printf("\n\ni. Carrier Power =%.2f W",p_c);
  printf("\n\nii. Percentage Transmission efficiency =%.2f percent",n);
   printf("\n\niii. Carrier amplitude  =%.2f V",a_c);

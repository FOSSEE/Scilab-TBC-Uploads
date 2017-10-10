//Chapter 4: Selection of Motor Power Rating
//Example 1
clc;

//Variable Initialization
t_min=40       // Minimum Temperature Rise in degree Celsius
t_ri=15          // Temperature Rise in degree Celsius
t_cl=10          // Clutched Time in sec
t_de=20          // Declutched Time in sec
k= 60           // Heating and Cooling time constant  

//Solution

x=exp(-t_de/k)
y=exp(-t_cl/k)

th2= (t_min-t_ri*(1-x))/x       //as t_min=t_ri(1-x)+th2*x
th_s=(th2-t_min*y)/(1-y)   //as th2=th_s(1-y)+t_min*y

mprintf("Maximum temperature during the duty cycle :%.1f °C",th2)
mprintf("\n Temperature when the load is clutched continuously :%.1f °C",th_s)

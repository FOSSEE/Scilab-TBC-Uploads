//Chapter-7,Example7_25,pg 7-67
V=240
I=5
K=1200
N=40
Er=N/K
W=V*I
t=99.8
Td=500//total divisions
div=K/Td//1 division
We=0.1*div//wattmeter error
Ce=0.05*K/100//construction wattmeter error
Te=We+Ce//total error
Wru=K+Te
Wrl=K-Te//wattmeter reading limits
He=0.05//human error
Se=0.01//stopwatch error
Tte=He+Se//total timing error
Sru=t+Tte//stopwatch reading limits
Srl=t-Tte
Eu=Wru*Sru*1/(3600*10^3)//energy obtained limits
El=Wrl*Srl*1/(3600*10^3)
errl=(Er-El)/El
errl=errl*100
erru=(Er-Eu)/Eu//error limits
erru=erru*100
printf("percentage error upperlimt\n")
printf("erru=%.3f \n",erru)
printf("percentage error lowerlimt\n")
printf("errl=%.3f \n",errl)

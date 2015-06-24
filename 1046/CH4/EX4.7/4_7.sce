//Example 4.7
//calculatemthe inlet and outlet temp.of gas.
//Given
Q=38700             //kcal/h, heat duty
W=2000              //kg/h gas flow rate
cp=0.239            //kcal/kg C, specific heat of nitrogen
A=10                //m^2 ,heat exchanger area
U=70                //kcal/hm^2 C, overall heat transfer coefficient
n=0.63              //fin efficiency

//Calculation
dt=Q/(W*cp)         //C, temp. difference
//To-Ti=dt.........................(i)
dtm=Q/(U*A*n)
//(To-Ti)/(log((160-Ti)/(160-To)))=87.8........(2)
//solving  1  and 2
deff('[x]=f(To)','x=(To-(To-dt))/(log((160-(To-dt))/(160-To)))-87.8')
To=fsolve(100,f)
Ti=To-dt
printf("The inlet temprature is  Ti=%f C\n",round(Ti))
printf("The outlet temprature is To=%f C\n",round(To))

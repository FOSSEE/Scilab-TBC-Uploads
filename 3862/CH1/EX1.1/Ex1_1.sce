clear
//downstream direction as x
//direction across river as y

//

//variable declaration

Vx= 8                       //velocity of stream, km/hour
Vy=(20)                       //velocity of boat,km/hour

V=sqrt((Vx**2)+(Vy**2)) //resultant velocity** km/hour
theta=Vy/Vx

alpha= atan(theta)*180/%pi   //angle, degrees     

printf("\n  The resultant velocity : %0.2f  km/hour",V)
printf("\n %0.2f °",alpha)

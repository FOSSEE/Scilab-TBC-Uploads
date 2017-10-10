clear
//
//Initialisation
t=0.1                   //time period in seconds from diagram
v1=10                     //peak voltage from diagram
t1=25*10**-3

//Calculation
f1=1*t**-1               //frequency in Hz
w1=2*%pi*f1          //Angular velocity
phi=-(t1*t**-1)*360      //phase angle

//Result
printf("\n phi = %d degree",phi)

printf("\n %d sin(%dt%d) Hz\n",v1,w1,phi)

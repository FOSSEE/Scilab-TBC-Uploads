clear
d=150.0  //Diameter of the load drum 
R = 400.0   // Length of lever arm  
T1 = 15.0  //Number of teeth on pinion, 
T3 = 20.0  //Number of teeth on pinion, 
T2 = 45.0   //Number of teeth on spur wheel
T4 = 40.0   //Number of teeth on spur wheel
P= 250.0    //Effort
Efficiency=0.4
VR=R*T2/(d*T1)*2.0*T4/T3       //Velocity Ratio

W=VR*Efficiency*P       //Load 

printf("\n LOad %0.3f  N",W)

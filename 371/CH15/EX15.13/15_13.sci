//The ac Motor Control//
//Example 15.13//
PFi=0.1;//input powerfactor//
PFl=0.9;//load powerfactor//
A=(acos(sqrt(2)*PFi/PFl))*180/3.14;//firing angle indegrees//
printf('firing angle of cyclo converter drive=A=%fdegrees',A);
IDF=0.7;//leading input displacement factor//
DF=PFi/IDF;//distortion factor//
printf('\ndistortion factor=DF=%f',DF);


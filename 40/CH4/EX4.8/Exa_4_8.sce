//stability of recursive filter
//for roc:/z/>/a/ 
a=input('enter the value of alpha')
z=%z;
H=z/(z-a);
if (abs(a)<1)
    disp("system is stable")
else
    disp("system is not stable")
 end
 //for roc:/z/</a/
 if (abs(a)>1)
    disp("system is stable")
else
    disp("system is not stable")
 end
        
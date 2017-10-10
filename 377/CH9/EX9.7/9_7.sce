disp("Va=(K*T/q)*log((J/Js)+1)");
a=0.0259;  //say 
J=10^5;
Js=250*10^-3;
Va=a*log((J/Js)+1);
printf('\n The value of Va is %fV',Va);
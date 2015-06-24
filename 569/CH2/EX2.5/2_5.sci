//calculating maximum static error 
disp('calculating maximum static error');
//Span of the thermometer(degree C)
S=200-150;
//Accuracy of the thermometer(in terms of percentage of span)
A=0.0025;
e= A*S;
disp(e,'Maximum Static error(degree C)=');

//Variable declaration
l=[0.6,1.2,0.9,1.0,0.6,0.8]      //list of delay times
k=0

//Calculation


Mean= mean(l)
for i = 1:length(l)
    k = k + (l(i)-Mean)^2
end

ssquare = k/(length(l)-1)      // Sample Variance (in minute square)

//Results
printf ( "Sample Variance : %.3f (minute square)",ssquare)

//Variable declaration
stddev1 = 0.0152    //standard deviation for ball bearing (in mm) 
mean1 = 3.92        //mean for ball bearing (in mm)
stddev2 = 0.0086    //standard deviation for spring (in inch)
mean2 = 1.54        //mean for spring (in inch)

//Calculation


cof_var1 = (stddev1/mean1)*100          // coff of variation for ball bearing in %
cof_var2 = (stddev2/mean2)*100         // coff of variation for spring in %

//Results
if cof_var1<cof_var2 then
    printf ( "First instrument is more precise")
else if cof_var1>cof_var2 then
    printf ( "Second instrument is more precise")
else
    printf ( "both instruments are equal precise")
end
end
    

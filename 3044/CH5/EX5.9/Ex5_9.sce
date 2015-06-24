// Variable declaration
Mean = 11.6
std_dev = 3.3 

// Calculation



Lower = 7.5   // corresponding to outages = 8 -> 7.5 to 8.5 thus atleast = 7.5

index = (Lower-Mean)/std_dev
F = 0.1075     // F value for F(index) i.e. F(-1.24) = 0.1075

// Result
printf ( "Desired probability: %.4f",1-F)

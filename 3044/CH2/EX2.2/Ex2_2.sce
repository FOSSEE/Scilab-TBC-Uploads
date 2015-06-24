//Variable declaration
sample1 = [0.27,0.35,0.37]  // Copper content-1
sample2 = [0.23,0.15,0.25,0.24,0.30,0.33,0.26] // Copper content-2
Yvalue1 = [1,1,1]
Yvalue2 = [1,1,1,1,1,1,1]

//Results
plot(sample1,Yvalue1,"bo")
plot(sample2,Yvalue2,"ro")

title("Dot Diagram")
xlabel("$Copper Content$")

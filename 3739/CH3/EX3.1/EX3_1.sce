//Chapter 3, Example 3.1, page 61
clc
//Initialisation
h=2                             //height in Km
h1=5                            //height in Km


//Calculation
t2=290-(6.5*h)                         //Proposed formula for height h=2Km
p2=950-117*h
e2=8-3*h
t21=294.98-5.22*h-0.007*h**2
p21=1012.82-111.56*h+3.86*h**2
p=14.35*2.72**(-0.42*h-0.02*h*h+0.001*h**3)

t5=290-6.5*h1                        //proposed formula for height h=5Km
p5=950-117*h1
e5=8-3*h1
t51=294.98-5.22*h1-0.007*h1**2
p51=1012.82-111.56*h1+3.86*h1**2
p1=14.35*2.72**(-0.42*h1-0.02*h1**2+0.001*h1**3)


//Results
printf("T(2) = %.1f K",t21)
printf("\nP(2) = %.2f hpa",p21)
printf("\np(2) = %.2f hpa",p)
printf("\nT(5) = %.1f K",t51)
printf("\nP(5) = %.2f hpa",p51)
printf("\np(5) = %.2f hpa",p1)

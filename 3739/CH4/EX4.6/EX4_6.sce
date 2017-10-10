//Chapter 4, Example 4.6, page 142
clc

//Initialisation
d=200                            //height in Km
f=700                            //frequency in Khz

//Calculation
T1e=0.4                          //from graph 4.10
T2e=0.9
T3e=1.7
T1f=1.3
T2f=2.8
T3f=4.3
Tef=0.3
Tef1=2.7
Tef2=0.5

//Results
printf("(1) Time delay of E layer, Td(1E) = %.1f ms",T1e)
printf("\n                           Td(2E) = %.1f ms",T2e)
printf("\n                           Td(2E) = %.1f ms",T3e)
printf("\n    Time delay of F layer, Td(1F) = %.1f ms",T1f)
printf("\n                           Td(2F) = %.1f ms",T2f)
printf("\n                           Td(2F) = %.1f ms",T3f)
printf("\n(2) Time delay of E and F for a distance of 500 km, Td(E,F) = %.1f ms",Tef)
printf("\n(3) Td(1F,3F) = %.1f ms",Tef1)
printf("\n    Td(1E,3E) = %.1f ms",Tef2)

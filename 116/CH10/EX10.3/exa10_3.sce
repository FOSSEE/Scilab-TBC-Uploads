
//Caption:Program to determine the probability that the delay of an ATM voice cell 
 
//Example 10.3
 
//Page 488
 
disp('Assuming the access link is 90% utilized on average.')
 
disp('The queuing theory is provided in Chapter 12. It involves determining the probability that the DSI access queue contains enough cells to represent 10msec of transmission time')
 
tm=[(53*8)/(192*8000)]

disp('Therefore, 10 msec delay represents 10/0.276 = 36.2 cell times.')

p=(0.9)*{%e^[-(1-0.9)*36.2]}//Refer to equation 12.25 in chap 12 
 
disp("Result")
 
disp("P(>10msec) = 2.5% delay will be displayed by more than 10 msec ")
 
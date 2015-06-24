clear;
clc;
disp("--------------Example 11.6---------------")
// example explaination 
printf("This an example of Go-Back-N. This is an example of a case where the forward channel is reliable, but the reverse is not.\nNo data frames are lost, but some ACKs are delayed and one is lost. The example also shows how cumulative\nacknowledgments can help if acknowledgments are delayed or lost.\n");
printf("\nAfter initialization, there are seven sender events. Request events are triggered by data from the network layer;\narrival events are triggered by acknowledgments from the physical layer. There is no time-out event here because all\noutstanding frames are acknowledged before the timer expires.Although ACK 2 is lost, ACK 3 serves as both ACK 2 and ACK3.\n\nThere are four receiver events, all triggered by the arrival of frames from the physical layer.")
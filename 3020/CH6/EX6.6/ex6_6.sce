clc;
clear all;
fd = 20e-2; // The film focus distance
se = 5e-2; // The displacement of the X-ray tube
sd = 0.5e-2;
t = 5e-2; // Thickness of the specimen
d = (fd*sd)/(se);
loc = se-d;//'The location of the flow from the top surface
disp('m',loc,'The location of the flow from the top surface is')
//there is mistake in book in the answer.. checked in calculator also..

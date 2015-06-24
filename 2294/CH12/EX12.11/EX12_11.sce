//Exampple 12.11
//Find the required probabilities.
disp(0.45,'Let SS be the event that Ramesh pass in Signal and systems, P(SS)=')
disp(0.32,'Let RP be the event that Ramesh pass in Random process P(RP)=')
disp(0.15,'P(passed in both)=')
disp('P(passed in either one subject)=P(SS U RP)')
disp(0.45+0.32-0.15,'P(SS)+P(RP)-P(passed in both)=0.45+0.32-0.15=')
disp(1-0.62,'P(passed in neither of the subjects)=1*P(passed in either subjects)=1-0.62=')
disp('P( passed in one subject)=');
disp(0.45*0.68+0.55*0.32,'P(SS)*P(failed in RP)+P(failed in SS)*P(RP)=(0.45)*(1-0.32)+(1-0.45)*(0.32)=')
disp(1-0.45,'P(failed in SS)=1-P(SS)=1-0.45')

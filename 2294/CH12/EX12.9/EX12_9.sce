//Example 12.9
//Find the required probabilities.
disp('Let H be the event that Husband is alive')
disp('Let W be the event that wife is alive')
disp('P(H)=0.85   P(W)=0.9')
disp(0.85*0.9,'P(both alive)=P(H)P(W)=')
disp(0.15*0.1,'P(neither alive)=(1-P(H))(1-P(W))=')
disp(0.85+0.9-0.765,'P(Atleast one is alive)=P(H)+P(W)-P(both are alive)=')
disp('P(only one is alive)=P(Husband is alive and wife is dead)OR P(Husband is dead and wife is alive)')
disp('P(H)(1-P(W))+(1-P(H))P(W)=')
disp((0.85)*(1-0.9)+(1-0.85)*(0.9),'(0.85)(1-0.9)+(1-0.85)(0.9)=')

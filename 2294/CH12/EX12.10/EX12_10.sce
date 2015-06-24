//Example 12.10
//find the required probabilities.
disp('P(Plant shut down)=P(S1&S2&S3 is offline)or P(S1&S2 is offline)or P(S1&S3 are offline)=')
p=(0.01)*(0.03)*(0.05)+(0.01)*(0.03)*(1-0.05)+(0.01)*(1-0.03)*(0.05)
disp('(0.01)*(0.03)*(0.05)+(0.01)*(0.03)*(1-0.05)+(0.01)*(1-0.03)*(0.05)=')
disp(p)
disp(1-p,'P(Plant on line)=1-P(Plant shut down)=')
disp('P(plant is online/S1 failed)=')
disp((0.01)*(1-0.03)*(1-0.05)/0.01,'P(plant is online and S1 failed)/P(S1 failed)=(0.01)*(1-0.03)*(1-0.05)/0.01')

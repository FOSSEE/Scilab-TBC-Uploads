//Example 12.8
//Find the given probabillities.
disp('P{R1/So}=0.15 and P{Ro/S}=0.75');
disp((1-0.15),'P{Ro/So}1-P{R1/So}');
disp((1-0.075),'P{R1/S1}1-P{Ro/S1}');
disp('P{R1}=P{R1/So}P(So)+P{R1/S1}P{S1}=');
disp(((0.15)*(0.85)+(0.925)*(1-0.85)),'(0.15)(0.85)+(0.925)(1-0.85)=');
disp('Using Bayes Rule:')
disp('P{S1/R1}=(P{R1/S1}P{S0})/P{R0}=');
p=(0.925*0.15/0.266)
disp(p,'(0.925)(1-0.85)/0.266=');
disp('P{Ro/So}P{So}/P{Ro}');
disp('P{Ro/So}P{So}/(P{Ro/So}P{So}+P{Ro/S1}P{S1}=');
p=(0.85)*(0.85)/((0.85)*(0.85)+(0.075)*(0.15))
disp(p,'(0.85)(0.85)/((0.85)(0.85)+(0.075)(0.15))=');


disp("Experiment: A and B both shoot at a target")   
PA=1/4;  //given probability of A hitting the target
PB=2/5;  //given probability of B hitting the target
disp("A and B are independent events so PA*PB will be equal to probability of the event of A and B both hitting the target i.e PAnB")
PAnB=PA*PB;
PAorB=PA+PB-PAnB;
disp(PAorB,'probability of atleast one of them hitting the target')
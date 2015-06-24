detect_present = 0.99;
detect_notpresent = 0.01;
pop_disease = 0.005;
prob = detect_present*pop_disease/((detect_present*pop_disease) +(detect_notpresent*(1-pop_disease)) ) ;
disp(prob, "The required probability is")
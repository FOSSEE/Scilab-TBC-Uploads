T1 = -15+273;
T2 = 30+273;
Q2 = 1.75; // in kJ/sec
Q1 = (T1/T2)*Q2;
W = Q1-Q2;
disp("kW",W,"Least Power necessary to pump the heat out is")

// There is a calculation mistake in the book 
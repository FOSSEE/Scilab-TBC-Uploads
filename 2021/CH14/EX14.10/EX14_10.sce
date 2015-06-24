//Finding of "n" of the Model
//Given
Lm=1;
Lp=64;
Np=0.02;
//To Find
A=sqrt(Lp/Lm);
Nm=A*(Lm/Lp)^(2/3)*Np;
disp("Manning n of the model ="+string(Nm)+" No units");
